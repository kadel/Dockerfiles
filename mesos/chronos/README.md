# Chronos
Distributed and fault-tolerant scheduler for Apache Mesos.

https://github.com/mesosphere/chronos

Installed from [Mesosphere](https://mesosphere.com) [repository](https://mesosphere.com/downloads/#repository-setup)


## versions:
* chronos 2.2.0-0.1.20141002204602
* mesos 0.20.1-1.0.debian75


## example:
```
docker run -d tomaskral/chronos  --master zk://zoo1:2181,zoo2:2181,zoo3:2181/mesos --zk_hosts zk://zoo1:2181,zoo2:2181,zoo3:2181
```
