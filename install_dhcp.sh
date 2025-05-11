#!/bin/bash

echo "🔧 Installing ISC DHCP Server..."
sudo apt update
sudo apt install -y isc-dhcp-server

echo "📁 Copying configuration file..."
sudo cp ./dhcpd.conf /etc/dhcp/dhcpd.conf

echo "⚙️ Setting the network interface..."
echo 'INTERFACESv4="eth0"' | sudo tee /etc/default/isc-dhcp-server

echo "🚀 Restarting the DHCP service..."
sudo systemctl restart isc-dhcp-server
sudo systemctl enable isc-dhcp-server

echo "✅ DHCP Server is installed and running!"
