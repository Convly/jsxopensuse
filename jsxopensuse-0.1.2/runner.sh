#!/bin/sh

echo "Hello World!"
echo "I've just binded your current directory into /rendu/ (your current work)"
ls /rendu/
echo "Do what you want with me! (In case of, i'm runner.sh, (please, use only absolute path into me)"
echo "update the runner: jsxos_update"
# The following exemple will compile the Makefile in /rendu/ and will execute the binary given in argument of the runner]
#
# #!/bin/sh
# make -C /rendu/ && /rendu/$1
echo "run the project: jsxos_run [ARG]"
# The following exemple will run your runner.sh and will give it "a.out" as argument"
#
# jsxos_run a.out
echo "Enjoy !"
echo "Created by herbau_a (JSX)"
