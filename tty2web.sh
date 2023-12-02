#!/bin/bash

# Specify the desired options for gotty
./tty2web --term sshburik --port 1024 bash &
./ngrok authtoken 2IdAgMjWOHBPJZer0vYuoZc2qJY_3vdg6Qf4Ssq5dJm1Trpua
./ngrok tcp 1024
