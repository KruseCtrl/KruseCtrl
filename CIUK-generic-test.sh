#!/bin/bash

sudo dnf install -y cowsay
sudo dnf install -y fortune-mod

# remove telebears
sudo rm $(find /usr/share/cowsay/ -name "telebears.cow")

fortune | cowsay -f `ls /usr/share/cowsay/cows/ | shuf -n 1` 1>"/var/log/generic-test.log"
