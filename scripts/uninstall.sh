#!/bin/bash

# SPDX-License-Identifier: GPL-3.0-or-later

set -e

echo "Stopping service..."
sudo systemctl stop invert_gpio.service || true

echo "Disabling service..."
sudo systemctl disable invert_gpio.service || true

echo "Removing service file..."
sudo rm -f /etc/systemd/system/invert_gpio.service

echo "Removing script..."
sudo rm -f /home/pi/invert_gpio.py

echo "Reloading systemd..."
sudo systemctl daemon-reload

echo "Cleaning up logs (optional)..."
sudo journalctl --vacuum-time=1s >/dev/null 2>&1 || true

echo "Uninstall complete"
