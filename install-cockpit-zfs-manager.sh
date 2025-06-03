#!/bin/bash

# install-cockpit-zfs-manager.sh
# Author: Fearrato
# Date: 2025-06-03
# License: MIT
# Description: Installs Cockpit, Cockpit ZFS Manager, and Podman on Ubuntu 25.04

set -euo pipefail

# Ensure the script is run as root
if [[ "$EUID" -ne 0 ]]; then
  echo "❌ Please run this script with sudo or as root."
  exit 1
fi

echo "🔄 Updating system packages..."
apt update && apt upgrade -y && sudo apt install -y git

echo "📦 Installing Cockpit and ZFS utilities..."
apt install -y cockpit zfsutils-linux

echo "📦 Installing Podman and Cockpit Podman module..."
apt install -y podman cockpit-podman

echo "📥 Cloning Cockpit ZFS Manager repository..."
git clone https://github.com/45Drives/cockpit-zfs-manager.git /tmp/cockpit-zfs-manager

echo "⚙️ Installing Cockpit ZFS Manager..."
cp -r /tmp/cockpit-zfs-manager/zfs /usr/share/cockpit/

echo "🧹 Cleaning up temporary files..."
rm -rf /tmp/cockpit-zfs-manager

echo "🚀 Enabling and starting Cockpit service..."
systemctl enable --now cockpit.socket

IP_ADDRESS=$(hostname -I | awk '{print $1}')
echo "✅ Installation complete!"
echo "🌐 Access Cockpit at: https://$IP_ADDRESS:9090"
echo "🔐 Log in with a user account that has sudo privileges."
