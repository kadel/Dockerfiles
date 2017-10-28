# marathon-servicerouter
https://mesosphere.github.io/marathon/docs/service-discovery-load-balancing.html#servicerouter-py

Marathon [servicerouter.py](https://github.com/mesosphere/marathon/blob/releases/0.13/bin/servicerouter.py) containerized with haproxy


## Example:
```
docker run -it --net=host -e MARATHON=http://192.168.121.237:8080  tomaskral/marathon-servicerouter
```
You can also set `SLEEP` environment value to set how often script checks Marathon API changes (default is 1m)
