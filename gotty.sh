#!/bin/bash

# Specify the desired options for gotty
./gotty -p 1024 -w bash &
./ngrok authtoken 2IdAgMjWOHBPJZer0vYuoZc2qJY_3vdg6Qf4Ssq5dJm1Trpua
./ngrok tcp 1024
