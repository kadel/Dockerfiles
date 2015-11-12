# mesos-dns


## Run mesos-dns via Marathon
1. Sample application definition for single node cluster:  [mesos-dns-martahon.json](mesos-dns-markdown.json)
``` bash
curl -X POST -H "Content-Type:application/json" http://localhost:8080/v2/apps -d@mesos-dns-marathon.json
```
2. edit `/etc/resolv.conf` on slaves
``` bash
sed -i "1s/^/nameserver 127.0.0.1\n / /etc/resolv.conf
```



## Custom configuration

### Config file on host
1. create `config.json`
2. start start `tomaskral/mesos-dns` and mount `config.json` to container as volume
``` bash
docker run -v /path/to/config.json:/mesos-dns/config.json tomaskral/mesos-dns -config /mesos-dns/config.json
```

### Build your own image with custom config file
sample Dockerfile
``` Dockerfile
FROM tomaskral/mesos-dns
COPY config.json /mesos-dns/config.json
CMD ["-config","/mesos-dns/config.json"]
```
