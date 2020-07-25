roscore
cd ~/proj/catkin_ws_zed
source ./devel/setup.bash
roslaunch zed_wrapper zed.launch &

cd ~/proj/catkin_ws
source ./devel/setup.bash 
rosrun procimg2 procimg2 &

cd ~/proj/ElasticFusion-yyy/GUI/build
./ElasticFusion -l ~/proj/RGBDConverter/RGBDConverter/build/img_room.klg &
