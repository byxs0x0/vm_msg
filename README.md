# ubuntu-16.04-base

## base_v1.0
 - 该镜像完成了从5.0升级到6.0的过程
 - 删除了软盘，并关闭了软盘检测
 - apt使用了aliyun源
 - 硬盘扩容至16GB为上线

## base_v1.1
 - 基于`base_v1.0`
 - 通过apt更新内核版本为`4.4.0-137-generic`

 
## docker_v1.0
 - 基于`base_v1.1`
 - 通过aliyun方式安装了`docker-ce`
 - `/etc/docker/deamon.json`中添加了ustc镜像源
 
## docker-compose_v1.0
 - 基于`docker_v1.0`
 - 通过pip安装了`docker-compose`
