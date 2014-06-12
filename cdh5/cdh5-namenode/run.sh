#!/bin/bash

# TODO: get namedir from conf
NAMEDIR=/var/lib/hadoop-hdfs/cache/dfs/name

FSIMAGEDIR=$NAMEDIR/current


# format if namedir does not exist
if [ ! -d  $FSIMAGEDIR ]; then
    echo "!!!! FORMATING namenode hadoop.dfs.name.dir=$FSIMAGEDIR"
    hdfs namenode -format
else
    echo "$FSIMAGEDIR exists, assume that namenode is already formated"
fi


# start namenode
hdfs namenode
