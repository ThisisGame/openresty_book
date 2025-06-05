## HelloWorld

OpenResty就是Nginx，Nginx运行时需要一个配置文件来设置监听端口、根目录等，OpenResty也是一样的。

新建`work`文件夹作为OpenResty的工作文件夹。

然后在里面新建`conf`文件夹用于存储配置文件，新建`logs`文件夹来存放日志。

下面来运行OpenResty第一个例子。

### 1. 准备配置文件

新建配置文件：`files\work\conf\hello_world.conf`

```conf
worker_processes  1;
error_log logs/error.log;
events {
    worker_connections 1024;
}
http {
    server {
        listen 8000;
        location / {
            default_type text/html;
            content_by_lua_block {
                ngx.say("<p>hello, world</p>")
            }
        }
    }
}
```

然后打开CMD，进入到上面创建的`work`目录，执行命令：`nginx -p ./ -c ./conf/hello_world.conf`

![](../../imgs/openresty/start_nginx.png)

这样就启动了OpenResty，其实就是启动了Nginx，并且按照编写的配置文件运行。

在配置文件中，`listen 8000;`指定了Nginx在`8000`端口上监听Http请求。

那么打开浏览器，访问`http://localhost:8000/`，就能访问我们的网站。

![](../../imgs/openresty/localhost.png)

### 2. Nginx执行Lua代码

当在浏览器中访问网站时，Nginx执行了在配置文件中写的Lua代码：

```
content_by_lua_block {
    ngx.say("<p>hello, world</p>")
}
```

`content_by_lua_block`里包含的就是要执行的Lua代码，可以修改它试试。
