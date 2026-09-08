sudo docker start ros2_jazzy_harmonic_gui

sudo docker exec -it -e DISPLAY=$DISPLAY ros2_jazzy_harmonic_gui bash


source /opt/ros/jazzy/setup.bash

echo $ROS_DISTRO
//jazzy

gz sim --versions
//8.15.0

gz sim shapes.sdf
rviz2
