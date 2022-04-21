### 1、安装Git

`sudo apt-get install git`

### 2、创建本地Git工作区

创建本地文件夹，输入`git init`命令，创建本地Git工作区

### 3、添加文件至仓库

将需要上传到远程仓库的文件移入本地工作区，输入`git add .`命令全选工作区中的文件。

**注意** ：add后有 . 符号，且与add用空格隔开

### 4、把项目提交到本地仓库

用`git commit -m "你的标注信息"` 命令将工作区中的全部文件加入Git本地仓库

### 5、生成SSH KEY并绑定在GItee上（之前绑定过可跳过）

`cd ~/.ssh`

`ssh-keygen -t rsa -C "your email"`

`cat ~/.ssh/id_rsa.pub`

将密钥复制之后在gitee的个人设置下的密钥中添加即可。

### 6、关联本地仓库和远程仓库

`git remote add origin https://*********.git`

### 7、推送到远程仓库

如果是推送到新仓库，使用`git push -u origin master`

如果再推送就用`git push origin master`

### 8、Git远程仓库版本回退

使用命令 `git log` 查看版本号(commit栏对应的字符串即为版本号)，复制要回退的版本对应的版本号

使用命令`git reset --hard 版本号` 将版本回退

使用命令`git push -f` 提交更改（此时如果只使用`git push` 会报错，因为回退后本地库的HEAD指向的版本要比远程库旧，需要-f强制推上去）

 

