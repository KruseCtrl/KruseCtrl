#!/bin/bash

echo "Starting script, cows incoming" > /tmp/generic-test.log
sudo dnf install -y cowsay fortune-mod

# remove telebears
sudo rm $(find /usr/share/cowsay/ -name "telebears.cow")

fortune | cowsay -f `ls /usr/share/cowsay/ | shuf -n 1` 1>"/tmp/generic-test.log"

