logout
groupadd g1
man groupmod
man useradd
man usermod
usermod -aG g1 user
exit
useradd -g g1 user
usermod -aG g1 user
groups g1
groups user
exit
useradd u2
useradd -aG g1 u2
usermod -aG g1 u2
groups u2
exit
yum install mc
mc
yum install links
yum install elinks
yum install w3m
yum install links2
yum install netrik
yum install lynx
yum --enablerepo=PowerTools install links
exit
ls
nano i18n 
ext
exit
dnf install glibc-langpack-ru
logout
exit
nano /etc/vconsole.conf 
logout
exit
nano /etc/vconsole.conf 
logout
exit
reboot now
cd anaconda/
ls
less syslog 
chmod a+r syslog 
ls -l
less X.log 
chmod a+r *
ls
ls -l
less syslog 
exit
poweroff
ll
touch lab2.txt
ll
vi lab2.txt
ll
vi lab2.txt
fdisk -l
fdisk /dev/sda
vi lab2.txt
blkid /dev/sda3 -o value -s UUID > /root/sda3_uuid
ll
vi sda3_uuid
sudo blkid /dev/sda3 > /root/sda3_uuid
ll
vi sda3_uuid
vi lab2.txt
mkfs.ext4 -b 2096 /dev/sda3
dumpe2fs -h /dev/sda3
tune2fs -i 2m -c 2 /dev/sda3
mkdir -p /mnt/newdisk
mount /dev/sda3 /mnt/newdisk/
ll
cd /mnt
ll
cd newdisk
ll
cd /root
ll
ln -s /mnt/newdisk /root/newdisk_slink
ll
vi lab2.txt
mkdir /mnt/newdisk/catalog
cd /mnt/newdisk
ll
cd /root
echo "/dev/sda3 /mnt/newdisk ext4 noexec,noatime 0 0" >> /etc/fstab
reboot
df -h
vi lab2.txt
e2fsck -n /dev/sda3
fdisk /dev/sda
mkfs.ext4 /dev/sda4
sudo tune2fs -J location=/dev/sda4 /dev/sda3
fdisk /dev/sda
lsblk
fdisk /dev/sda
reboot
fdisk /dev/sda
lsblk
vi lab2.txt
reboot
cd /var/log
ll
cd ~
ll
cd /
ll
cd mnt
ll
cd newdisk
ll
cd catalog
ll
lsblk
cd ~
ll
lab2.txt
vi lab2.txt
mount.cifs
mount.cifs //192.168.1.114/share
mount.cifs //192.168.1.114/share /mnt/share -o user="$SMB_USER", password="$SMB_PASSWORD"
echo "$SMB_USER"
mount.cifs //192.168.1.114/share /mnt/share -o user="$SMB_USER", password="$SMB_PASSWORD"
service smbd status
apt-get install libcups2 samba samba-common
vim /etc/samba/smb.conf
vi /etc/samba/smb.conf
smbpasswd -a user
smbpasswd -e user
vi /etc/samba/smbusers
service smbd restart
reboot
