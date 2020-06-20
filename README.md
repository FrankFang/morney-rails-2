# 使用方法

## 下载代码

```bash
git clone git@github.com:FrankFang/morney-rails-1.git
cd morney-rails-1
bundle install
bundle exec rake app:update:bin
```

## 开启数据库

如果你曾经开启过数据库，请运行

```bash
docker ps -a 
然后找到上次的容器
docker restart 容器id
```

如果你第一次开启数据库，请运行

```bash 
docker run -v morney-rails-1-data:/var/lib/postgresql/data -p 5001:5432 -e POSTGRES_USER=fang -e POSTGRES_PASSWORD=123456  -d postgres:12.2
```
其中 

* morney-rails-1-data 是数据库目录名，可以替换为任意目录名，也可以替换为绝对路径
* 5001 是数据库服务端口名，可以随意替换，但要确保 database.yml 也作对应修改
* POSTGRES_USER=fang 是用户名，可以随意替换，但要确保 database.yml 也作对应修改
* POSTGRES_PASSWORD=123456 是密码，可以随意替换，但要确保 database.yml 也作对应修改

## 配置 database.yml

1. Mac / Linux / Docker for Windows 用户，请将 database.yml 中的 hosts 替换为 localhost 
2. Docker Toolbox for Windows 用户，请将 database.yml 中的 hosts 替换为 docker-machine ip 的结果

## 创建数据库

```bash
bin/rails db:create
```

## 运行 server

```bash
bin/rails s
```
