# salt-master



example:
```bash
#!/bin/bash

docker run \
    -p 4505 \
    -p 4506 \
    -v `pwd`/etc:/etc/salt \
    -v `pwd`/salt:/srv \
    -v `pwd`/ssh:/root/ssh \
    --rm \
    tomaskral/salt-master:latest
```