echo 
echo "===== CHECK FOR UTF-8 ====="
locale

echo
echo "===== UPDATING ====="

sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF.8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

echo
echo "===== CONFIRM UTF-8 ====="
locale

echo
echo "===== ROS INSTALL DIRECTORY AT ~/ROS2_Jazzy-Jalisco ====="
mkdir ~/ROS2_Jazzy-Jalisco
cd ~/ROS2_Jazzy-Jalisco

echo
echo "===== UBUNTU UNIVERSE REPO ====="
sudo apt install software-properties-common
sudo add-apt-repository universe

echo 
echo "===== DOWNLOADING ROS2 ====="
sudo apt update && sudo apt install curl -y
export ROS_APT_SOURCE_VERSION=$(curl -s https://api.github.com/repos/ros-infrastructure/ros-apt-source/releases/latest | grep -F "tag_name" | awk -F '"' '{print $4}')

curl -L -o /tmp/ros2-apt-source.deb "https://github.com/ros-infrastructure/ros-apt-source/releases/download/${ROS_APT_SOURCE_VERSION]/ros2-apt-source_${ROS_APT_SOURCE_VERSION}.$(. /etc/os-release && echo ${UBUNTU add-apt-repository universe

echo 
echo "===== DOWNLOADING ROS2 ====="
sudo apt update && sudo apt install curl -y
export ROS_APT_SOURCE_VERSION=$(curl -s https://api.github.com/repos/ros-infrastructure/ros-apt-source/releases/latest | grep -F "tag_name" | awk -F '"' '{print $4}')

curl -L -o /tmp/ros2-apt-source.deb "https://github.com/ros-infrastructure/ros-apt-source/releases/download/${ROS_APT_SOURCE_VERSION]/ros2-apt-source_${ROS_APT_SOURCE_VERSION}.${. /etc/os-release && echo ${UBUNTU_CODENAME:-${VERSION_CODENAME}})_all.deb"
sudo dpkg -i /tmp/ros2-apt-source.deb


echo
echo "===== CHECK TOOLS ====="
grep Suites /etc/apt/sources.list.d/ubuntu.sources

echo
echo "If noble-updates/noble-backports are missing edit the file and update the line to"
echo "Suites: noble noble-updates noble-backports"
echo "Then run:"
echo "sudo apt clean &&  sudo apt update && sudo apt full-upgrade -y"
echo
echo "===== SETUP COMPLETE ====="
