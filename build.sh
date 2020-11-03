#!/bin/sh
# Fetches and builds the serial_ir kernel module
# Author: Dennis Wagelaar
set -euxo pipefail

wget -O serial_ir.c https://raw.githubusercontent.com/torvalds/linux/master/drivers/media/rc/serial_ir.c
make clean
sudo make dkms
