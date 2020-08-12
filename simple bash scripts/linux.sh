#! /bin/bash

# login
read -p 'Username : ' user_var
read -sp 'Password : ' pass_var
echo
echo "Username : $user_var"
echo "Password : $pass_var"

# some useful commands to information on linux
# CPU architecture infomration
lscpu
echo

# total amount of free space available along with the amount of memory used and swap memory in the system, and also the buffers used by the kernel
free
echo

# The /proc filesystem is pseudo filesystem. It does not exist on a disk. Instead, the kernel creates it in memory. It is used to provide information about the system (originally about processes, hence the name).
# The ‘/proc/meminfo‘ is used by to report the amount of free and used memory (both physical and swap) on the system as well as the shared memory and buffers used by the kernel.
cat /proc/meminfo
echo

# specifies the version of the Linux kernel
cat /proc/version
echo

# display the information about USB buses and the devices connected to them
lsusb
echo

# display information about PCI buses in the system and devices connected to them
lspci
echo

# find out information about your Linux installation
lsb_release -a
echo

# lists information about all or the specified block devices
lsblk
echo

hostname -I # IP Address
echo

free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'
top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}' 
