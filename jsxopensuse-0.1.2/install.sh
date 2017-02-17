#!/bin/bash

echo "--START--"
echo "--STEP (1 / 5)-- Creating directory for docker [~/.jsxopensuse]"
rm -rf ~/.jsxopensuse
mkdir ~/.jsxopensuse
echo "--DONE--"
echo "--STEP (2 / 5)-- Moving all utils into directory [Dockerfile, runner.sh, OpenSuse.Tumbleweed] => [~/.jsxopensuse]"
cp ./Dockerfile ./runner.sh ./openSUSE-Tumbleweed.tar.xz ./openSUSE-Tumbleweed.tar.xz.sha256 -t ~/.jsxopensuse
echo "--DONE--"
echo "--STEP (4 / 5)-- Building docker image on this computer as \"jsxopensuse\""
docker rmi -f `docker inspect jsxopensuse | grep "Id" | cut -c 23-34`
sudo docker build -t jsxopensuse ~/.jsxopensuse/
echo "--DONE--"
echo "--STEP (5 / 5)-- Move executables running and update \"jsxopensuse\""
cp ./jsxos_run /usr/local/bin/jsxos_run
cp ./jsxos_update /usr/local/bin/jsxos_update
echo "--DONE--"
echo "Use jsxos_run [BINARY_NAME] to launch the compilation and the execution of your current directory and jsxos_update to update your docker with the new runner.sh."
echo "Be careful, you must be root for all the operations."
echo "--END--"

