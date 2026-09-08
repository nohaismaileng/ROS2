sudo docker exec -it boring_williamson bash

source /opt/ros/humble/setup.bash

ros2 run demo_nodes_cpp talker

//////////////////other terminal

sudo docker exec -it boring_williamson bash

source /opt/ros/humble/setup.bash

ros2 run demo_nodes_cpp listener


//what do u have humble or jazzy

sudo docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.Status}}"
