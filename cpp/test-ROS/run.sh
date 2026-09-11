cd ~/ros2_ws
source /opt/ros/jazzy/setup.bash
colcon build --symlink-install

//////////Summary: 1 package finished

source /opt/ros/jazzy/setup.bash
source ~/ros2_ws/install/setup.bash
ros2 run cpp_pubsub talker


source /opt/ros/jazzy/setup.bash
source ~/ros2_ws/install/setup.bash
ros2 run cpp_pubsub listener
