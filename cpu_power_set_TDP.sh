#! /bin/bash

set -e

# sudo powercap-set intel-rapl-mmio -z 0 -c 1 -l 10500000
sudo powercap-set intel-rapl-mmio -z 0 -c 1 -l 9500000
sudo powercap-info intel-rapl-mmio -z 0 -c 1 -l
