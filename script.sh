#!/bin/bash

cd /opt/
sudo git clone -v https://github.com/iveisberg/shvirtd-example-python.git
cd /opt/shvirtd-example-python/
sudo docker compose up -d