roscore
cd ~/catkin_ws
source ./devel/setup.bash
roslaunch zed_wrapper zed.launch &

cd ~/proj/catkin_ws
source ./devel/setup.bash 
rosrun procimg2 procimg2 &

cd /home/yyy/proj/ElasticFusion-yyy/GUI/build
./ElasticFusion -l ../../dyson_lab.klg &
