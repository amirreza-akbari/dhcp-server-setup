<h1 align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/3/35/Tux.svg" alt="Linux Logo" width="100"/>
  <br>
  DHCP Server Setup on Linux
</h1>

<p align="center">
  🚀 Easy and clean setup of a DHCP server on Debian-based systems like Ubuntu.
</p>

---

## 🛠️ About This Project

This repository provides a simple, beautiful, and automated way to install and configure a **DHCP (Dynamic Host Configuration Protocol) server** on Linux using `isc-dhcp-server`.

> Perfect for personal networks, labs, and virtualized environments.

---

## 📦 Features

- ✅ One-command automatic installation
- ⚙️ Editable configuration file (`dhcpd.conf`)
- 💡 Example subnet configuration
- 🧩 Works with most Debian/Ubuntu distributions

---

## 🚀 Quick Start

### 1. Clone the Repository
```bash
git clone https://github.com/amirreza-akbari/dhcp-server-setup.git
cd dhcp-server-setup
```

### 2. Run the Installation Script
```bash
sudo bash install_dhcp.sh
```

---

## 📁 Configuration Preview

Default DHCP configuration (`dhcpd.conf`):

```conf
default-lease-time 600;
max-lease-time 7200;
authoritative;

subnet 192.168.1.0 netmask 255.255.255.0 {
  range 192.168.1.100 192.168.1.200;
  option routers 192.168.1.1;
  option domain-name-servers 8.8.8.8, 8.8.4.4;
}
```

🔧 You can customize it at: `/etc/dhcp/dhcpd.conf`

---

## 🧠 Notes

- Make sure only **one DHCP server** is active on your network.
- You may need to adjust your network interface (e.g., `eth0`, `enp0s3`) in the script or config file.

---

## 💬 License & Author

MIT License | Created by **Your Name**

Enjoy DHCP the elegant way! 🐧✨
