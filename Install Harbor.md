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
## Add your system use to the Docker Group
```
usermod -aG docker $USER
```
```
newgrp docker
```
### Check Docker versions:
```
docker version
```
```
docker compose version
```
## Download Harbor Installer
```
curl -s https://api.github.com/repos/goharbor/harbor/releases/latest | grep browser_download_url | cut -d '"' -f 4 | grep '\.tgz$' | wget -i -
```
## OR
```
wget https://download1591.mediafire.com/8ohzvax7y3agfCYJ1c2jV845W7szw9-gCp2tog1VPYql7RqeoWjje-xcAnHiIqEi0ORUnpfhD9eSzQXwb1RoucwR4_hNEGTXRckOxzIvEw2sxCjjX_k3lEmLRGvT1ECtYjh1iQf7vrfrdhwIcU9pUa9ifRSbxsmiUSoAFbrZ1WM2/p8nbmh275ia0ywq/harbor-offline-installer-v2.9.1.tgz
```
```
tar zxvf harbor-offline-installer-v*.tgz
```
```
cd harbor
```
```
ls -al
```
## Configure Harbor inside harbor folder
```
nano harbor.yml.tmpl
```
### Change these parameters 
- "hostname"
- "harbor_admin_password"
* Hashing https settings
* Save as this filename (drop the .tmpl)
* harbor.yml

  ### Verify configurations
  ```
  cat harbor.yml
  ```
  ## Install Harbor
  ```
  docker image ls
  ```
  ```
  docker container ls
  ```
  ```
  ./install.sh
  ```
  ```
  docker image ls
  ```
  ```
  docker container ls
  ```

  ## Test Harbor web access
  ```
  http://IP_ADDRESS
  ```



