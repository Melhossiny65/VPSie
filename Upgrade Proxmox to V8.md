### Disable Enterprise repository 
```
sed -i "s/^deb/\#deb/" /etc/apt/sources.list.d/pve-enterprise.list
```

### Update to ensure you get the latest Proxmox-VE 7.4.15 or newer
```
apt update
```
```
apt dist-upgrade
```

### Update all Debian and Proxmox VE repository entries to Bookworm.
```
sed -i 's/bullseye/bookworm/g' /etc/apt/sources.list
```

### run the upgrade checklist utility, resolve any issues reported before continuing
```
pve7to8 --full
```

### Add the Proxmox VE 8 Package Repository For the no-subscription repository
```
touch /etc/apt/sources.list.d/pve-install-repo.list
```
```
sed -i -e 's/bullseye/bookworm/g' /etc/apt/sources.list.d/pve-install-repo.list 
```

### Update the Ceph Package Repository for no-subscription repository.
```
echo "deb http://download.proxmox.com/debian/ceph-quincy bookworm no-subscription" > /etc/apt/sources.list.d/ceph.list
```

### Last update to get Proxmox VE 8
```
apt update
```
```
apt dist-upgrade
```
```
reboot
```
------------------------------------------------------------------------------------------------------------

### If you have any problem with your current repository, 
you can use this repository but you should delete the previous repository. 
```
nano /etc/apt/sources.list
```
```
deb http://ftp.debian.org/debian bullseye main contrib
deb http://ftp.debian.org/debian bullseye-updates main contrib
deb http://security.debian.org bullseye-security main contrib
deb http://download.proxmox.com/debian/pve bullseye pve-no-subscription
```
