#!/bin/bash
echo "Starting forum installation..."

sudo -s
git clone https://github.com/discourse/discourse_docker.git /var/discourse
cd /var/discourse
chmod 700 containers

expect ./setup.sh $SMTP_USERNAME $SMTP_PASSWORD