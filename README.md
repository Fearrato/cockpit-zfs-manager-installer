# Cockpit ZFS Manager Installer

This script automates the installation of **Cockpit**, **Cockpit ZFS Manager**, and **Podman** on **Ubuntu 25.04**. It streamlines the setup process, enabling you to manage ZFS storage pools and containers through a user-friendly web interface.

## 🔧 Features

* Installs the latest versions of Cockpit, ZFS utilities, and Podman.
* Integrates the Cockpit ZFS Manager plugin for seamless ZFS management.
* Configures the Cockpit service for immediate access via a web browser.

## 📋 Prerequisites

* A system running Ubuntu 25.04.
* An active internet connection.
* A user account with `sudo` privileges.

## 🚀 Installation

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/Fearrato/cockpit-zfs-manager-installer.git
   cd cockpit-zfs-manager-installer
   ```



2. **Run the Installer Script:**

   ```bash
   sudo bash install-cockpit-zfs-manager.sh
   ```



The script will perform the following actions:

* Update system packages.
* Install Cockpit, ZFS utilities, Podman, and the Cockpit Podman module.
* Clone and install the Cockpit ZFS Manager plugin.
* Enable and start the Cockpit service.

3. **Access the Cockpit Interface:**

   After installation, open your web browser and navigate to:

   ```
   https://<your-server-ip>:9090
   ```



Replace `<your-server-ip>` with the actual IP address of your server. Log in using your system credentials.

## 📄 License

This project is licensed under the [MIT License](LICENSE).

