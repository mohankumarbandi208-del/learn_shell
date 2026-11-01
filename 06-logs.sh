#!/bin/bash

#checking sudo access
user_id=$(id -u)
logs_folder="/var/log/shell/practice"
logs_file=${logs_folder}/${0}.log

#checking sudo user access
if [ $user_id -ne 0 ]; then
    echo "Run with sudo access"
    exit 1
fi

#create logs folder
mkdir -p ${logs_folder}

#checking Function
validate(){
    if [ $? -ne 0 ]; then
        echo "Installation Failed"
        exit 1
    else
        echo "installation Success"
    fi
}

#install nginx
dnf install nginx -y &>> $logs_file
validate $? "Nginx"

#install mysql
dnf install mysql &>> $log_file
validate $? "Mysql"


