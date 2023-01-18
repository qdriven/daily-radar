# Docker Cheetsheet

## Setup Docker in Mainland

- create docker/daemon.json
```sh
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
    "registry-mirrors": [  
    "https://registry.docker-cn.com",
    "http://hub-mirror.c.163.com",
    "https://docker.mirrors.ustc.edu.cn"
    ]
}
EOF
```
重启docker，docker 拉去image速度就会上升了

## docker-compose yaml文件

## docker-compose 常用命令

- install
```sh
pip install docker-compose
```
- run docker-compose command

```sh
docker-compose -f <docker-compose-file> up <-d>
```

