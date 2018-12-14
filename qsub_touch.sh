#!/bin/bash
# qsub_touch.sh
# by Shan Sabri, github.com/ShanSabri
# 
# Description: qsub touch_everything.sh

MEM=4G
RUNTIME=8

qsub -cwd -o qsub_oe -e qsub_oe -m n -l highp,h_data=${MEM},h_rt=${RUNTIME}:00:00 touch_everything.sh
