#!/bin/bash -l

out=/home/flight/gpurun.out
echo "starting up" > $out
# works specifically for Nvidia a100 linux x64
cd /home/flight
echo "in directory: $(pwd)" >>$out

sudo wget https://uk.download.nvidia.com/tesla/515.65.07/NVIDIA-Linux-x86_64-515.65.07.run

driverscript=$(find /home/flight -name 'NVIDIA*')
echo "file to run is:  $driverscript" >> $out

sudo chmod +x "$driverscript" &>>$out
echo "file permissions are: $(stat -c %a $driverscript)"

sudo dnf install -y "kernel-devel-uname-r == $(uname -r)" &>>$out

echo "finished installing kernel devel" &>>$out 

sudo dnf groupinstall -y "Development Tools" &>>$out

echo "finished installing dev tools" &>>$out

sudo "$driverscript" --silent &>>$out

echo "finished setting up GPU drivers" >> $out
