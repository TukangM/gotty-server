#!/bin/bash

# Instal OpenSSH Server
sudo apt update
sudo apt install sudo openssh-server -y

# Mulai SSH Server
sudo systemctl start ssh

# Aktifkan SSH Server untuk dijalankan otomatis saat boot
sudo systemctl enable ssh

# Instal sudo
sudo apt install sudo -y

# Buat pengguna yusup
sudo useradd -m yusup

# Set kata sandi untuk pengguna yusup (909909)
echo "yusup:909909" | sudo chpasswd

# Tambahkan pengguna yusup ke grup sudo
sudo usermod -aG sudo yusup

# Masukkan token authtoken Ngrok Anda di sini
./ngrok authtoken 2VIxGn1iB9vSlFSHFhfc7gGQUAV_566u6yhqcykzuETbRf4Fw

# Jalankan Ngrok untuk SSH
./ngrok tcp 22