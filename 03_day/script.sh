#!/bin/bash
# Installs nginx and enable
if [[ ! $(systemctl list-unit-files | grep nginx) ]]
    then sudo yum install nginx -y && sudo systemctl start nginx && sudo systemctl enable nginx
fi

sudo chmod 777 /usr/share/nginx/html/index.html
sudo echo "<h1>Hello from Siahei Hryshchanka</h1>" > /usr/share/doc/HTML/index.html
