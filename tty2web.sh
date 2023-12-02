#!/bin/bash

# Specify the desired options for tty2web
chmod +x tty2web
./tty2web --term sshburik --port 1024 bash &
./ngrok authtoken 2IdAgMjWOHBPJZer0vYuoZc2qJY_3vdg6Qf4Ssq5dJm1Trpua
./ngrok tcp 1024
