# Docker

## 개요
docker 설치 shell script

## OS
- Ubuntu

## 가이드 문서
- https://docs.docker.com/engine/install/ubuntu/

## 구 버전 제거

```shell
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
```

```text
Images, containers, volumes, and networks stored in /var/lib/docker/ aren't automatically removed when you uninstall Docker. 
If you want to start with a clean installation, and prefer to clean up any existing data, read the uninstall Docker Engine section.
```

## Docker 

```shell
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install the Docker packages.
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Docker 설치 테스트
sudo docker run hello-world
```
