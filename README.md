# Linux Debug Toolkit

Small scripts for first-pass Linux, Yocto, Docker and port troubleshooting.

Update 1.0:
Added ROS2 Installation Scripts
-ros2_setup.sh
-ros2_install.sh
-ros2_remove.sh

CAUTION: THESE SCRIPTS ARE FOR ROS2 JAZZY JALISCO ON UBUNTU 24.04 ONLY

## Scripts

### system_check.sh

Collects: 
-kernel/system info
-CPU info
-RAM usage
-disk usage
-IP addresses
-routing table

Usage: ./system_check.sh

### log_extract.sh

Outputs:
-extracted_errors.txt

Usage: ./log_extract.sh log.do_compile

### port_check.sh

Outputs:
-check required ports used by the ProSuite Service

Usage: ./port_check.sh

### ros2_setup.sh

Function: 
Set up the Linux environment for ROS2 installation

Usage: ./ros2_setup.sh

Note: This script is buggy

### ros2_install.sh

Function: 
Install ROS2 on the machine AFTER setup has been completed

Usage: ./ros2_install.sh


### ros2_unistall.sh

Function:
Uninstall ROS2 from the machine

Usage: ./ros2_uninstall.sh

Note: Should be able to work across most ROS2 versions

# Generate 'sample_output.txt'

bash

{
  echo
  echo "===== SYSTEM CHECK SAMPLE ====="
  ./sytem_check.sh

  echo 
  echo "===== PORT CHECK SAMPLE ====="
  ./port_check.sh

  echo
  echo "===== DOCKER CHECK SAMPLE ====="
  ./docker_check.sh
} > sample_output.txt


