# Hashcat-vast.ai
专为vast.ai设计的docker镜像，内配serverchan，不浪费一分钱在配置环境上。
可用于CTF中的哈希爆破
## 使用方法
1. 登录vast.ai,点client下的Create
2. 点EDIT IMAGE & CONFIG
3. 拉到最下，在custom image里填myts2/hashcat-vast.ai
4. Launch mode选pass arguments to docker.
5. 填入参数。第一个参数是在[serverchan](https://sct.ftqq.com/sendkey)中看到的SendKey，剩下的参数即传入hashcat的参数。
6. 点Select完成配置
7. 最后就可以选择一个你喜欢的配置然后rent了。
8. 等待，最后结果会发到微信上，同时docker会自动销毁，不会浪费一分钱。

