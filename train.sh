#!/usr/bin/env bash

WEIGHTS="yolov3-voc.backup"
WEIGHTS_BACKUP="yolov3-voc.backup_`date +%m%d_%H`"

mv ./backup/${WEIGHTS} ./backup/${WEIGHTS_BACKUP}
./darknet -i 0 detector train cfg/voc.data cfg/yolov3-voc.cfg ./backup/${WEIGHTS_BACKUP}
