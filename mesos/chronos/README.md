# Chronos
Distributed and fault-tolerant scheduler for Apache Mesos.

https://github.com/mesosphere/chronos

Installed from [Mesosphere](https://mesosphere.com) [repository](https://mesosphere.com/downloads/#repository-setup)


## versions:
* chronos 2.2.0-0.1.20141002204602
* mesos 0.20.1-1.0.debian75


## example:

### running from command line
```
docker run -d tomaskral/chronos  --master zk://zoo1:2181,zoo2:2181,zoo3:2181/mesos --zk_hosts zk://zoo1:2181,zoo2:2181,zoo3:2181
```

### running on Marathon
```
{
    "id": "/chronos",
    "instances": 1,
    "cpus": 0.1,
    "mem": 512,
    "shell": "false",
    "args": ["--master", "zk://zoo1:2181,zoo2:2181,zoo3:2181/mesos", "--zk_hosts", "zk://zoo1:2181,zoo2:2181,zoo3:2181"],
    "container": {
        "type": "DOCKER",
        "docker": {
            "image": "tomaskral/chronos",
            "network": "BRIDGE",
            "portMappings": [
                {
                    "containerPort": 8080,
                    "hostPort": 0,
                    "protocol": "tcp"
                }
            ]
        }
    }
}
```
