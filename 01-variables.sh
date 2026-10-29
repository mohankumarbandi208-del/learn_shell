#!/bin/bash
echo "All passing arguments ${@}"
echo "Number of arguments ${#}"
echo "File name ${0}"
echo "First Argument ${1}"
echo "Script file real path $(realpath $0)"
echo "The scipt is running by user ${USER}"

