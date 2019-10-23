# envoy-benchmark

envoy玩了一段时间，对其代码已经很熟了。但是性能一直没有自己测试过，所以决定自己测试看看。

# 测试工具
调研了一下，现在http的压测工具有几种：ab, http_load, siege.
其中ab的统计数据是最全的，所以决定使用ab来测试。
但是ab有个缺陷，只支持http1.0的包，所以在测试envoy的时候需要配置兼容性。

# envoy版本
测试的时候先使用官方的envoy。在getenvoy.io上，可以看到在ubuntu上安装官方envoy的方法。
后面定位问题的时候会使用修改后的envoy。

# 操作系统
ubuntu16.04 lts

# 环境
两台cvm。client配置为8c16g，server为1c1g。两台cvm通过内网ip访问。

# 测试项目

### 作为静态服务器的性能
具体配置看envoy_officil目录。

测试碰到了一些问题，记录一下：
- ab测试耗时过长
每个请求耗时长达一秒。对比nginx的静态服务器性能，每个请求延时也就1ms。另外使用http_load测试envoy又是正常的。
打开envoy日志后，对比ab和http_load请求，发现在ab测试时，envoy回包的时候会提示delay close的提示，即envoy回包后，会等待1s后关闭socket。
而http_load测试时，没有这种情况，是envoy回包后http_load主动关闭了连接。
总结下来就是: ab 收到回包后没有主动关闭连接，而是等server关闭连接后才开始统计包的延时。而http_load是主动关闭连接。
为了避免这种情况，需要设置envoy的delayed_close_timeout为0。


