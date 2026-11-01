#!/bin/bash

#checking sudo access
user_id=$(id -u)
if [$user_id -ne 0]; then
    echo "Run script with sudo access"
    exit 1
fi

#install nginx
dnf install nginx -y
if [$? -ne 0]; then
    echo "Nginx failed......"
    exit 1
else
    echo "Nginx installation Success"
fi

#install mysql
dnf install mysql -y
if [$? -ne 0]; then
    echo "mysql installation failed"
    exit 1
else
    echo "Installation success"
fi
