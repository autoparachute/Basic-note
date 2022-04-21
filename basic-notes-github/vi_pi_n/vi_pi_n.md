# ubuntu20.04 vi_pi_n

- github搜索clash for windows ,进入最高收藏量的 `Fndroid/clash_for_windows_pkg`

- 点击右侧栏`release`, 下载` Clash.for.Windows-0.19.15-x64-linux.tar.gz ` 
- tar -zxvf 命令解压` Clash.for.Windows-0.19.15-x64-linux.tar.gz ` , 进入`Clash for Windows-0.19.15-x64-linux`
- 在一台能科学上网的设备上打开youtube搜索“长风分享”，点击第一个视频（直播），获得视频右下角“批量节点（4小时）“对应密码
- 打开浏览器访问`v2rayse.com`, 将密码输入对应框进入网站
- 勾选“名称”左侧框完成节点的全选，点击“订阅”，选择""订阅Clash"，点击复制第二个链接
- 打开终端输入`./cfw` ,选择 Profiles，将链接粘贴到`Download from a URL` ，点击Download。
- 选择`Settings` —>`Network` —>`Network Proxy` —>`Manual` ，将Http和Https对应栏均修改为127.0.0.1   7890
- 目前阶段应已经可以访问youtube、github等网站

## 配置git代理

- 为了保证`git clone` 能够不报错地扒代码，需将git代理的http与https协议端口绑定到VPN对应端口7890上
- 打开终端
- `$git config --global http.proxy http://127.0.0.1:7890`
- `$git config --global https.proxy https://127.0.0.1:7890`
- 可以通过`git config --list` 确认是否完成git代理的配置
- 目前阶段已经可以实现`git clone` 的正常执行

- **注意：**通过`git config --global http.proxy --unset`  和`git config --global https.proxy --unset`可以取消代理设置，恢复默认端口号



