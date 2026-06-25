echo 
echo "Please make sure setup is complete"
echo "===== CHECKING FOR UPDATE ====="

sudo apt update
sudo apt upgrade
sudo apt install ros-jazzy-desktop
sudo apt install ros-jazzy-ros-base

source /opt/ros/jazzy/setup.bash

echo
echo "===== INSTALL COMPLETE ====="
echo "For more info, please visit https://docs.ros.org/en/jazzy/installation/Ubuntu-Install-Debs.html"


