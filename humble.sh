sudo docker start boring_williamson

sudo docker exec -it -e DISPLAY=$DISPLAY boring_williamson bash

source /opt/ros/humble/setup.bash

cd /ros2_ws
source install/setup.bash

gazebo
gz sim shapes.sdf
or
rviz2
