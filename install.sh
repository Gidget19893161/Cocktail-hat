#!/bin/bash

set -e

echo "Installing dependencies..."
sudo apt update
sudo apt install -y python3-lgpio

echo "Copying script..."
cp invert_gpio.py /home/pi/

echo "Installing service..."
sudo cp invert_gpio.service /etc/systemd/system/

echo "Reloading systemd..."
sudo systemctl daemon-reload

echo "Enabling service..."
sudo systemctl enable invert_gpio.service

echo "Starting service..."
sudo systemctl start invert_gpio.service

echo "Done! Checking status..."
systemctl status invert_gpio.service --no-pager
