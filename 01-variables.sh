#!/bin/bash
echo "============================================================================================"
echo " "
echo "All passing arguments                   :   ${@}"
echo "pass all arguments as word              :   $*"
echo "Number of arguments                     :   ${#}"
echo "File name                               :   ${0}"
echo "First Argument                          :   ${1}"
echo "Script file real path                   :   $(realpath $0)"
echo "The scipt is running by user            :   ${USER}"
echo "Present working directory               :   ${PWD}"
echo "Home directory                          :   ${HOME}"
echo "The executed script process id          :   $$"
sleep 10 # sleep for 10 seconds
echo "Process id of cmd running in background :   $!"
echo "wait for 10 seconds............."
wait $! # script waits until $! cmd cmplete
echo "Line number                             :   ${LINENO}"
echo "Total time taken to execute the script  :   ${seconds}"
echo "Exit status of previous cmd             :   $?"

