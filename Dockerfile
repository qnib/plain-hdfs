FROM qnib/plain-hadoop

ENV ENTRYPOINTS_DIR=/opt/qnib/entry \
    HADOOP_DFS_REPLICATION=1 \
    HADOOP_HDFS_NAMENODE=false \
    HADOOP_HDFS_NAMENODE_PORT=8020 \
    HADOOP_HDFS_NAMENODE_URI=tasks.namenode
VOLUME ["/data/hadoopdata/"]

COPY opt/qnib/hdfs/namenode/etc/hdfs-site.xml /opt/qnib/hdfs/namenode/etc/
COPY opt/qnib/hdfs/etc/core-site.xml /opt/qnib/hdfs/etc/
COPY opt/qnib/hdfs/namenode/bin/start.sh /opt/qnib/hdfs/namenode/bin/

COPY opt/qnib/entry/*.sh /opt/qnib/entry/
CMD ["/opt/qnib/hdfs/namenode/bin/start.sh"]
