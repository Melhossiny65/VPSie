### disable proxmox commmercial repo
```
sed -i "s/^deb/\#deb/" /etc/apt/sources.list.d/pve-enterprise.list
```

### add the proxmox community repo
```
echo "deb http://download.proxmox.com/debian/pve $(grep "VERSION=" /etc/os-release | sed -n 's/.*(\(.*\)).*/\1/p') pve-no-subscription" > /etc/apt/sources.list.d/pve-community.list
```
### update software repositories
```
apt update
```
### install software updates
```
apt dist-upgrade -y
```
### clean apt cache
```
apt clean
```
### run the upgrade checklist utility, resolve any issues reported before continuing
```
pve7to8 --full
```
### update apt repositories to bullseye
```
sed -i 's/bullseye/bookworm/g' /etc/apt/sources.list && sed -i 's/bullseye/bookworm/g' /etc/apt/sources.list.d/pve-community.list && sed -i 's/bullseye/bookworm/g' /etc/apt/sources.list.d/pve-enterprise.list
```

### update software repositories
```
apt update
```
### install software updates
```
apt dist-upgrade -y
```
### clean apt cache
```
apt clean
```
### reboot
```
reboot now
```
