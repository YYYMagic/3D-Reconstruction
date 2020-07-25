roscore

cd ~/proj/catkin_ws
source ./devel/setup.bash 
rosrun procimg2 procimg2 &

cd ~/entry
rosbag play ./key.bag &

cd ~/proj/ElasticFusion-yyy/GUI/build
./ElasticFusion -l ../../dyson_lab.klg &
