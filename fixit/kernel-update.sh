sudo uname -r
sudo cat /boot/grub2/grub.cfg | grep 6.1
sudo yum list installed kernel

sudo su
sudo grub2-mkconfig > /boot/grub2/grub.cfg
sudo ln -s /boot/grub2/grub.cfg /boot/grub/
sudo grubby --set-default /boot/vmlinuz-3.10.0-1160.6.1.el7.x86_64
sudo reboot

sudo uname -r
sudo cat /boot/grub2/grub.cfg | grep 6.1
