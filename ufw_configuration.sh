#!/bin/bash

# ---------------------------------------------------

# Lab – Basic Firewall Setup using UFW on RHEL 9

# ---------------------------------------------------

echo "[+] Installing EPEL Repository..."
sudo dnf install -y [https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm](https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm)

echo "[+] Installing UFW..."
sudo dnf install -y ufw

echo "[+] Enabling and Starting UFW Service..."
sudo systemctl enable ufw
sudo systemctl start ufw

echo "[+] Allowing SSH (port 22)..."
sudo ufw allow 22/tcp

echo "[+] Denying HTTP (port 80)..."
sudo ufw deny 80/tcp

echo "[+] Enabling UFW Firewall..."
echo "y" | sudo ufw enable

echo "[+] UFW Status:"
sudo ufw status verbose

echo "[+] UFW Configuration Completed Successfully!"
