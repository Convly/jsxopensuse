#!/bin/bash

echo "--START--"
echo "--STEP (1 / 5)-- Creating directory for docker [~/.jsxopensuse]"
rm -rf ~/.jsxopensuse
mkdir ~/.jsxopensuse
echo "--DONE--"
echo "--STEP (2 / 5)-- Moving all utils into directory [Dockerfile, runner.sh, OpenSuse.Tumbleweed] => [~/.jsxopensuse]"
cp ./Dockerfile ./runner.sh ./jsxos_packages ./packages -t ~/.jsxopensuse
echo "--DONE--"
echo "--STEP (4 / 5)-- Building docker image on this computer as \"jsxopensuse\""
sudo docker rmi -f `sudo docker inspect jsxopensuse | grep "Id" | cut -c 23-34`
sudo docker build --build-arg packages="`cat ~/.jsxopensuse/packages`" --tag=jsxopensuse ~/.jsxopensuse/
echo "--DONE--"
echo "--STEP (5 / 5)-- Move executables running and update \"jsxopensuse\""
sudo cp ./jsxos_run /usr/local/bin/jsxos_run
sudo cp ./jsxos_update /usr/local/bin/jsxos_update
sudo cp ./jsxos_packages /usr/local/bin/jsxos_packages
echo "--DONE--"
echo "Use jsxos_run [BINARY_NAME] to launch the compilation and the execution of your current directory and jsxos_update to update your docker with the new runner.sh."
echo "Be careful, you must be root for all the operations."
echo "--END--"

