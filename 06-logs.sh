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
        echo "${2} Installation Failed" | tee -a $logs_file #${2} means argument
        exit 1
    else
        echo "${2} installation Success" | tee -a $logs_file #${2} means argument
    fi
}

#install nginx
dnf install nginx -y &>> $logs_file
validate $? "Nginx"

#install mysql
dnf install mysql -y &>> $logs_file
validate $? "Mysql"


