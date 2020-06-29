#show history
history

#raspberry enable ssh
sudo touch /boot/ssh

#list block devices
lsblk
#list mounts
df -H
## https://www.lostsaloon.com/technology/how-to-list-disks-in-linux/
## https://linuxhandbook.com/linux-list-disks/


#mount disk
sudo mount /dev/sda1 /boot/firmware
sudo mount /dev/sda2 /
sudo mount -t cifs -o username=backup_user //nas/server_backups /media/backup

#see message log
dmesg