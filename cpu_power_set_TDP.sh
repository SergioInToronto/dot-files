#! /bin/bash

set -e

# Default to 10.5 watts
tdp_in_watts=${1:-10.5}

# powercap uses picowatts. Bash doesn't support floating-point math - use bc
picowatts=$(echo "${tdp_in_watts} * 10^6 / 1" | bc)

sudo powercap-set intel-rapl-mmio -z 0 -c 1 -l ${picowatts}
sudo powercap-info intel-rapl-mmio -z 0 -c 1 -l
