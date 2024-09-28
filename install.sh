mkdir urucup_ws
cd urucup_ws/
mkdir src
cd src
git clone git@github.com:Los-UruBots-del-Norte/limo_ros2.git
cd limo_ros2/
git checkout tello_support
cd .. 
git clone git@github.com:Los-UruBots-del-Norte/tello-ros2-gazebo.git
cd tello-ros2-gazebo/
git checkout real_and_gazebo
cd ..
cd ..
mkdir ~/urucup_ws/src/limo_ros2/limo_car/log
colcon build
export GAZEBO_MODEL_PATH=${PWD}/install/tello_gazebo/share/tello_gazebo/models
source /usr/share/gazebo/setup.sh
source install/setup.bash
ros2 launch tello_gazebo simple_launch.py
sleep 10
source install/setup.bash
ros2 launch limo_description limo_without_server.launch.py

