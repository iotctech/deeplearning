## 概述
**深度学习模型论文翻译文档集**  [gitpage链接](https://iotctech.github.io/deeplearning)

本文档使用bookdown框架制作，bookdown需要R语言支持，语法为RMarkdown

**安装R语言**
```
sudo apt-get install r-base r-base-dev
```
> 注意：R 3.3版本RCpp等包编译会报错，建议使用最新版的R安装包，作者使用R version 3.6.3 (2020-02-29)

## 更新apt R语言版本
```
sudo vi /etc/apt/sources.list

# 在sources.list中添加 deb https://mirrors.ustc.edu.cn/CRAN/bin/linux/debian stretch-cran35/
sudo apt install dirmngr
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'

sudo apt-get update
sudo apt upgrade
sudo apt-get install r-base r-base-dev

```

## 框架结构
- book: Rmd源码和img图片
- script: bookdown生成脚本
- build: 编译和gitpage部署脚本

## 运行
```
cd build
# 如果远程git仓库中没有git-pages分支，则需要先执行create_page_branch.sh脚本，创建远程git-pages分支
# git-pages分支为gitpage所需分支，如果希望生成gitpage静态页面，则需要本操作
# 使用前需将脚本git仓库路径修改为自己的仓库路径
./create_page_branch.sh

./build.sh
# 执行编译成功后，会在当前目录生成output目录

./deploy.sh
# 执行成功后，会在远程git仓库生成git-pages分支，并且可以通过 https://<username>.github.io/<projectname>/ 链接访问gitpage
```

## 注意
新框架使用LaTex模版，旧pandoc版本编译会报错，另外需要字体库支持，如果编译不过，需要安装相应字体库或R Packet，或者去LaTex模版修改字体库为自己电脑上已安装的字体

