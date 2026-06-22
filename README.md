# Linux Debug Toolkit

Small scripts for first-pass Linux, Yocto, Docker and port troubleshooting.

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


