#!/bin/bash

LOG="/var/log/vlab_metrics.log"

echo "----$(date)----" >> $LOG
top -b -n1 | head -5 >> $LOG
df -h >> $LOG
free -m >> $LOG
