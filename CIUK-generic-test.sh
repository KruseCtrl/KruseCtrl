#!/bin/bash
sudo dnf install -y cowsay
sudo dnf install -y fortune-mod
sudo rm /usr/share/cowsay/cows/telebears.cow

fortune | cowsay -f `ls /usr/share/cowsay/cows/ | shuf -n 1`
fortune | cowsay -f `ls /usr/share/cowsay/cows/ | shuf -n 1` 1>"/home/flight/test.out" 2>>/dev/null
fortune | cowsay -f `ls /usr/share/cowsay/cows/ | shuf -n 1` 1>"/home/centos/test.out" 2>>/dev/null
fortune | cowsay -f `ls /usr/share/cowsay/cows/ | shuf -n 1` 1>"/home/root/test.out" 2>>/dev/null
