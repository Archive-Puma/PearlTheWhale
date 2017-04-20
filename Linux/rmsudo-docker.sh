#! /bin/bash
echo "Removing sudo requirement running Docker"
sudo groupadd docker 2>/dev/null
sudo gpasswd -a ${USER} docker 2>/dev/null
sudo service docker.io restart 2>/dev/null && sudo service docker.io restart 2>/dev/null
echo "Script donde"
newgrp docker
