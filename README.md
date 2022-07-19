# mynvim

### dependencies

```
# Development Tools
sudo yum install gcc make libffi libffi-devel -y

# Node.js
NODEJS_VERSION=v16.9.1
curl -LO https://mirrors.aliyun.com/nodejs-release/${NODEJS_VERSION}/node-${NODEJS_VERSION}-linux-x64.tar.gz
sudo tar xvf node-${NODEJS_VERSION}-linux-x64.tar.gz -C /usr/local
sudo ln -s /usr/local/node-${NODEJS_VERSION}-linux-x64 /usr/local/node
sudo ln -s /usr/local/node/bin/node /usr/bin/node
sudo ln -s /usr/local/node/bin/npm /usr/bin/npm
sudo ln -s /usr/local/node/bin/npx /usr/bin/npx

sudo npm config set registry https://registry.npm.taobao.org --global
sudo npm config set disturl https://npm.taobao.org/dist --global


# requires Python 3.7+
git clone --depth 1 https://github.com/python/cpython.git -b 3.10
cd cpython
./configure && make && make test && sudo make install

mkdir ~/.pip/
cat << EOF >~/.pip/pip.conf
[global]
index-url = https://mirrors.aliyun.com/pypi/simple/

[install]
trusted-host=mirrors.aliyun.com

[list]
format=freeze
EOF

pip3 install --user neovim --upgrade
```

### Installation

Linux:

```
curl -LO https://ghproxy.com/https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.tar.gz
sudo tar xvf nvim-linux64.tar.gz -C /usr/local/
sudo ln -s /usr/local/nvim-linux64/bin/nvim /usr/bin/nvim

```

Mac:
```
brew install neovim
```

### get mynvim configuration

```
git clone --depth 1 https://github.com/pollyduan/mynvim.git ~/.config/nvim
```

If your only use VIM, you can download my `.vimrc`.

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -Lo ~/.vimrc https://github.com/pollyduan/mynvim/raw/master/.vimrc
```
### first use nvim

```
nvim +PlugInstall
```

If network connected timeout, please replace https url:

```
+Plug '+Plugin 'https://ghproxy.com/https://github.com/+g
```
