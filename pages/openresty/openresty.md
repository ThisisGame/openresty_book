## OpenResty介绍

OpenResty官网：`https://openresty.org/cn/`

OpenResty其实就是Nginx，但是它在Nginx里编译了Lua进行了扩展，这样可以用Lua来写很多扩展库，扩展Nginx的功能。

### 应用场景

OpenResty的功能就有很多，基本上围绕着http等协议的各个阶段来做功能，典型应用有反向代理、负载平衡、流量控制、防火墙、CDN等。

你可以将OpenResty当做Nginx来用，例如之前做微信小游戏时，微信要求使用加密的wss(相当于https)，但是我们服务器是skynet只支持ws(相当于http)，我们就用它来做wss转ws。

也可以用来做网站的后台，例如我的教程网站游戏人生(https://www.thisisgame.com.cn/)就是OpenResty做后台，用Lua解析Markdown返回给浏览器。



