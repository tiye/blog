
VPS 运行 Node 应用
------

先试试盛大云的免费 VPS, 然后买了 30 多的 Burst VPS,
挂载 sshfs 把系统弄到不能 ssh, 于是重新配置了前两天摸索的东西
因为之前在 98 上配过, 这两天步骤基本清晰的, 然后解决掉了一个问题
关于细节我并不清晰, 怎么简单怎么来了, 具体请仔细看英文资源
http://howtonode.org/deploying-node-upstart-monit
http://spektom.blogspot.com/2010/12/having-fun-with-nodejs.html

### Node 安装

手动安装的软件:

```bash
sudo apt-get install python-software-properties -y
sudo apt-add-repository ppa:chris-lea/node.js
sudo aptitude update
sudo aptitude install nodejs npm mongodb nginx monit -y
sudo npm install -g stylus jade doodle ws socket.io mongodb coffee-script
```

添加 `PATH`:

```
export NODE_PATH="/usr/lib/node_modules/"
```

### monit 配置

网上监视 Node 运行用到了 `upstart`, 最开始我用过, 但后来换了
因为 `upstart` 功能和 `monit` 有重叠, 重启功能还导致我操作失误过
配置为系统 daemon 的好处是随系统启动, monit 大概还不行, 但可以尝试脚本
中间一段 `env` 设置我大致在网上看到过, 后来摸索出来了, 是必要的

```monit
check host demo with address 127.0.0.1
    start program = "/usr/bin/env NODE_PATH=/usr/lib/node_modules /usr/bin/coffee /home/chen/coffee/demo/demo.coffee"
    stop program  = "/usr/bin/pkill -f '/home/chen/coffee/demo/demo.coffee'"
    if failed port 3001 protocol HTTP
        request /
        with timeout 10 seconds
        then restart
```

### Nginx 配置

单个的应用是这个样子的, 全部从网上抄的, 没有异议
不过今天发现这样配置 `socket.io` 还会出错, 在 CNode 发贴求助没解决
http://cnodejs.org/topic/501ceb69f767cc9a51b38c6f

```nginx
upstream demo {
    server 127.0.0.1:3001;
}

server {
    listen 0.0.0.0:80;
    server_name demo.jiyinyiyong.info;
    access_log /var/log/nginx/demo.log;

    location / {
      proxy_set_header X-Real-IP $remote_addr;
      proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
      proxy_set_header Host $http_host;
      proxy_set_header X-NginX-Proxy true;

      proxy_pass http://demo;
      proxy_redirect off;
    }
 }
```

### 静态文件
另外测试 `socket.io` 经常遇到跨域之类问题, 用 nginx 解决更方便
这是静态文件的配置, 我老是忘掉, 索性记录一下

```nginx
server {
  listen 80;
  server_name s.jiyinyiyong.info;
  access_log  /var/log/nginx/x.access.log
  charset utf-8;
  root /home/chen/s;
  autoindex on;
 }
```

### 检查端口占用

```bash
netstat -an | grep "LISTEN "
```

### 踢出 ssh 登录用户

添加代码避免因 ssh 时间限制而被踢 `ServerAliveInterval 60`
http://linux-wiki.cn/wiki/zh-hans/避免SSH连接因超时闲置断开
`who` 命令查看用户, 再用 `pkill -kill -t` 踢出对应用户
http://wenwen.soso.com/z/q302245848.htm
