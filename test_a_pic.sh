#!/usr/bin/env bash
#
PIC_NAME="000046.png"
# 权重路径
WEIGHTS="./backup/yolov3-voc.backup"


PICTURE="/Data1/Data_DL/KITTI/JPEGImages/${PIC_NAME}"
./darknet detector test cfg/voc.data cfg/yolov3-voc.cfg ./backup/yolov3-voc.backup ${PICTURE}

