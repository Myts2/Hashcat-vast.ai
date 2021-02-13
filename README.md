# Hashcat-vast.ai
专为vast.ai设计的docker镜像，内配serverchan，不浪费一分钱在配置环境上。
可用于CTF中的哈希爆破
## 使用方法
1. 登录vast.ai,点client下的Create
2. 点EDIT IMAGE & CONFIG
3. 拉到最下，在custom image里填myts2/hashcat-vast.ai
4. Launch mode选pass arguments to docker.
5. 填入参数。第一个参数是在[serverchan](https://sct.ftqq.com/sendkey)中看到的SendKey，剩下的参数即传入hashcat的参数。eg: `SERVERCHAN_KEY**** -a 3 -m 0 'd453ed6cacd1428131cc8f044e867e32' test?d?d?d?d?d?d?d?d` 最后会通过微信通知hash结果为test20210213。
6. 点Select完成配置
7. 最后就可以选择一个你喜欢的配置然后rent了。
8. 等待，最后结果会发到微信上，~~同时docker会自动销毁(TODO)，不会浪费一分钱。~~ vast.ai在做完docker cmd之后竟然不自动退出orz...那就收到微信之后手动检查一下点退出吧

