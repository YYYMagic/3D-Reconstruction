#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "talker");
  ros::NodeHandle n;
  ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);
  ros::Rate loop_rate(10);
  int count = 0;
  while (ros::ok())
  {
    std_msgs::String msg;
    std::stringstream ss;
    ss << "hello world " << count;
    msg.data = ss.str();
    ROS_INFO("%s", msg.data.c_str());
    chatter_pub.publish(msg);

    time_t time1 = time(0);
    ROS_INFO("%ld", time1);
    
    int aa = 255;
    ROS_INFO("%u", (unsigned short)aa);

    ros::spinOnce();
    loop_rate.sleep();
    ++count;
  }
  return 0;
}

