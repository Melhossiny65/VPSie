## Prerequisites installation
```
apt update && sudo apt -y full-upgrade
```
```
apt install apt-transport-https ca-certificates curl software-properties-common
```

## Install Docker
```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```
```
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list ＞ /dev/null
```
```
apt update
```
```
apt upgrade -y
```
```
apt-cache policy docker-ce
```
```
apt install docker-ce -y
```
```
systemctl status docker
```

