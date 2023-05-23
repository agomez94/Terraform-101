#!/bin/bash
sudo apt update -y
sudo touch /home/ec2-user/test.txt
sudo systemctl start httpd
sudo systemctl enable httpd