[TOC]
# oh-my-zsh from yiranzai?
我是一名来自中国的phper,我喜欢`oh-my-zsh`,我将我的`oh-my-zsh`配置和我的`vim`配置放进了这个仓库,并提供了一个`shell`脚本安装和配置,如果你喜欢,可以克隆我的仓库并安装.

# How to install

## Install zsh
1. 安装 [`zsh`](zsh.md)

2. 设置自己的`shell`为`zsh`

   ```sh
   $ chsh -s /bin/zsh
   ```

3. 重新登陆

## Install oh-my-zsh
1. 将我的仓库拉到你的本地

   ```shell
   $ git clone https://github.com/yiranzai/oh-my-zsh.git ~/.oh-my-zsh
   ```

2. 安装
    ```sh
    $ cd ~/.oh-my-zsh
    $ ./install.sh
     -----------------------------warning-------------------------
    |   The installation is successful, please execute            |
    |                                            source ~/.zshrc  |
     -------------------------------end---------------------------
    ```
该脚本会安装`vim`,配置`zshrc`/`vimrc`

3. 使配置生效
    ```sh
    $ source ~/.zshrc
    ```

4. 自定义配置

   [自定义`zsh`](oh-my-zsh.md)

   [自定义`vim`](vim.md)

# end

欢迎使用
