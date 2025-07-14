#!/bin/bash

# Stop nginx just in case
sudo systemctl stop nginx

# Copy contents to nginx directory
sudo cp -r /home/ec2-user/amazon-clone/* /usr/share/nginx/html/

# Start nginx again
sudo systemctl start nginx
