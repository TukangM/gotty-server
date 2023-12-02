#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
# Instal OpenSSH Server
apt update
apt install openssh-server sudo apt-utils -y

# Mulai SSH Server
sudo service ssh start

# Masukkan token authtoken Ngrok Anda di sini
./ngrok authtoken 2IdAgMjWOHBPJZer0vYuoZc2qJY_3vdg6Qf4Ssq5dJm1Trpua

# Jalankan Ngrok untuk SSH
./ngrok tcp 22
