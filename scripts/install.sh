#!/bin/bash

# SPDX-License-Identifier: GPL-3.0-or-later

set -e

REPO="https://raw.githubusercontent.com/Gidget19893161/Cocktail-hat/main"

echo "Installing dependencies..."
sudo apt update
sudo apt install -y python3-lgpio

echo "Downloading script..."
curl -sSL $REPO/src/invert_gpio.py -o /home/pi/invert_gpio.py
sudo chown pi:pi /home/pi/invert_gpio.py

echo "Downloading service..."
curl -sSL $REPO/systemd/invert_gpio.service -o /tmp/invert_gpio.service
sudo mv /tmp/invert_gpio.service /etc/systemd/system/invert_gpio.service

echo "Reloading systemd..."
sudo systemctl daemon-reload

echo "Enabling service..."
sudo systemctl enable invert_gpio.service

echo "Starting service..."
sudo systemctl restart invert_gpio.service

echo "Done! Checking status..."
systemctl status invert_gpio.service --no-pager
