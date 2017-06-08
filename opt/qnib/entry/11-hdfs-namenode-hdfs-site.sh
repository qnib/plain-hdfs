#!/bin/bash
set -x

cat /opt/qnib/hdfs/namenode/etc/hdfs-site.xml \
 > /opt/hadoop/etc/hadoop/hdfs-site.xml
