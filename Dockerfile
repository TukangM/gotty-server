# Gunakan gambar Debian Buster sebagai dasar
FROM debian:buster

# Update dan upgrade paket-paket sistem
RUN apt-get update && apt-get upgrade -y && apt install sudo -y

# Copy kalau gk tau copy ini tuh sama kayak lu ngoding cuman kopas doang
COPY . .

# Nah ini biar dapet izin doang, pelit soal nya
RUN chmod +x ngrok.sh
RUN chmod +x runss.sh
RUN chmod +x gotty.sh
RUN chmod +x tty2web.sh
RUN chmod +x sshngrok.sh

# Set user + add user
RUN useradd -m dave
RUN echo "dave:davesky" | sudo chpasswd
RUN sudo usermod -aG sudo ash

# CMD untuk menjalankan skrip ngrok.sh
USER dave
RUN sudo service ssh satrt
USER root
CMD ./sshngrok.sh
