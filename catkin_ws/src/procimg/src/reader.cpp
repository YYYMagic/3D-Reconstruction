#include<ros/ros.h>
#include<cv_bridge/cv_bridge.h>
#include<sensor_msgs/image_encodings.h>
#include<image_transport/image_transport.h>

#include<opencv2/opencv.hpp>
#include<opencv2/highgui/highgui.hpp>
#include<opencv2/imgproc/imgproc.hpp>

#include<stdio.h>
#include<math.h>
#include<vector>
#include<algorithm>

#include<descriptor.h>
#include<elas.h>

#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>

#include <fstream>
#include <ctime>
#include <string>


int count = time(0);


void imageCalllback(const sensor_msgs::ImageConstPtr& msg_left, const sensor_msgs::Image::ConstPtr& msg)
{
	ROS_INFO("Received \n");
	try{
        
        
        cv::Mat img_left = cv_bridge::toCvShare(msg_left, "bgr8")->image;
        float* depths = (float*)(&msg->data[0]);
        int height = img_left.rows;
        int width = img_left.cols;

        cv::Mat img_left_gray = cv::Mat::zeros(height, width, CV_16SC1);
        cv::cvtColor(img_left, img_left_gray, cv::COLOR_RGB2GRAY);

        cv::Mat dpf(height, width, CV_32F, depths);


        /*转化case1 函数转
        double minVal; double maxVal; 
        cv::minMaxLoc(dpf, &minVal, &maxVal);
	    std::cout << "Min disp: Max value" << minVal << maxVal;

        cv::Mat dst;
        dpf.convertTo(dst, CV_16U);
        
        normalize(dst, dst, 0, 256 * 256, cv::NORM_MINMAX);
        */

        //转化case2 手动转，迎合那个
        cv::Mat dst= cv::Mat::zeros(height, width, CV_16UC1);
        ushort *p = NULL;
        float *p2 = NULL;
        for(int i=0;i<dst.rows;i++)
        {
            p=dst.ptr<ushort>(i);//获取每行首地址
            p2=dpf.ptr<float>(i);
            for(int j=0;j<dst.cols;++j)
            {
                p[j]=p2[j] * 5000;
            }
        }

        cv::resize(img_left, img_left,cv::Size(640,480));
        cv::resize(dst, dst,cv::Size(640,480));

        cv::namedWindow("left_img", cv::WINDOW_NORMAL);
        cv::namedWindow("left_elas", cv::WINDOW_NORMAL);
        cv::imshow("left_img", img_left);
        cv::imshow( "left_elas", dst);

        //以一种方法：直接加锁读取
        /*
        std::fstream outFile("/home/yyy/proj/img/flg.txt",  std::ios::out );
        outFile << "1";
        cv::imwrite("/home/yyy/proj/img/left.png", img_left);
        cv::imwrite("/home/yyy/proj/img/left_elas.png",dst);
        outFile << "1";
        outFile.close();
        */

        //第二种方法：转化位klg的方式
        int64_t ts = count;
        std::stringstream ss;
        ss << ts;
        std::string str = ss.str();
        cv::imwrite("~/proj/img_stuf/rgb/" + str + ".png", img_left);
        cv::imwrite("~/proj/img_stuf/depth/" + str + ".png", dst);

        //cv::imshow("video2", img_right_D);
        cv::waitKey(30);
        count += 1000;
    }
    catch( cv_bridge::Exception& e )
    {
        ROS_ERROR( "Could not convert from '%s' to 'bgr8'.", msg_left->encoding.c_str() );
    }
}




int main(int argc, char** argv)
{
	ros::init(argc, argv, "reader");
	ros::NodeHandle n;
    //cv::namedWindow("video");
    cv::startWindowThread();

    image_transport::ImageTransport it(n);

    //image_transport::Subscriber sub = it.subscribe("/zed/zed_node/left/image_rect_color", 1, imageCalllback);

    message_filters::Subscriber<sensor_msgs::Image> left_sub(n, "/zed/zed_node/left/image_rect_color", 1);
    message_filters::Subscriber<sensor_msgs::Image> right_sub(n, "/zed/zed_node/depth/depth_registered", 1);
    typedef message_filters::sync_policies::ApproximateTime<sensor_msgs::Image, sensor_msgs::Image> sync_pol;
    message_filters::Synchronizer<sync_pol> sync(sync_pol(10), left_sub,right_sub);
    sync.registerCallback(boost::bind(&imageCalllback,_1,_2));

	
	ros::spin();
    //cv::destroyWindow("video");
	return 0;
}
