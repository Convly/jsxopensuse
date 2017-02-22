# JSXOPENSUSE
*Docker tool which allow you to execute scripts and commands on a virtual Epitech TumbleWeed operating system. (EpiTool Collection)*

### INSTALLATION

>  Remember that you need to have a root access to launch docker's commands

**0. Prerequisites**

Having the latest version of Docker installed (Download it [here](https://www.docker.com/products/overview)).

 **1. Download the repository**
``` sh
git clone https://github.com/Convly/jsxopensuse
```

**2. Run the installer**

``` sh
cd jsxopensuse-<VERSION>/
./install.sh
```

**3. Enjoy !**

### USAGE

In order to modify the behaviour of your runner inside the container, use:
``` sh
jsxos_update
```

**Do not forget to use only absolute path in this script. Your current directory will be binded into /rendu/ (in the docker container)**

Here is a functionnal exemple of what is expected into this file (runner):
``` sh
#!/bin/sh
make re -C /rendu/ && /rendu/$1 && make fclean
```
*This exemple will compile your code at the root of your current directory, then it will execute the binary given as parameters in /rendu/.*

To run your container and your runner, use:

``` sh
jsxos_run [ARG1, ARG2, ...]
```
*The following command will start your docker container and send it all the arguments you gave to it.*


In order to make our previous runner working, go to the directory of one of your project (obviously compiling with a make re) ; then execute the following command:
``` sh
jsxos_run <BINARY_NAME>
```
And replace **<BINARY_NAME>** with the name of your executable.

You can also add or remove as many packages as you want by editing the "packages" list.
To do that, simply execute:
``` sh
jsxos_packages [--update]
```
The _**--update**_ flag will automatically rebuilt your container with the updated packages list.

##### TODO

1. "update script" in order to do not have to reconfigure all the scripts and packages at each minor/major update.
2. Make a flag to launch the container in "_**daemon mode**_", which will allow to execute manual commands after the execution of the runner.
3. Add multiples flags to handle tons of minor but useful features.

---
###### __JSX__ | _herbau_a_
