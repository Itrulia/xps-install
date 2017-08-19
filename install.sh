# Install correct wifi drivers and locks the version
# sudo sh -c 'echo "deb http://es.archive.ubuntu.com/ubuntu/ vivid main" >> /etc/apt/sources.list.d/vivid.list'

# sudo rm /var/lib/apt/lists/* -vfr
# sudo apt-get update
# BY HAND!!!!!: Install initscript from https://launchpad.net/ubuntu/xenial/amd64/initscripts/2.88dsf-59.3ubuntu2
# sudo apt-get install wpasupplicant=2.1-0ubuntu7
# sudo apt-mark hold wpasupplicant
# sudo apt-mark hold initscript
# Disable random mac address
# printf "\n[device]\nwifi.scan-rand-mac-address=no" /etc/NetworkManager/NetworkManager.conf
# sudo service network-manager restart

# Install chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install google-chrome-stable


# Franz
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 2FAB19E7CCB7F415
sudo sh -c 'echo "deb http://styrion.at/apt/ ./" >> /etc/apt/sources.list.d/styrion.list'
sudo apt-get update
sudo apt install meetfranz

# Fira Code
sudo add-apt-repository universe
sudo apt-get update
sudo apt install fonts-firacode

# Ubuntu stuff

## Unity
sudo apt-get install unity-tweak-tool


# CLI

## Install vim
sudo apt-get install vim

## Install git
sudo apt-get install git

## Install Curl
sudo apt install curl

## Install ZSH / oh-my-zsh
sudo apt install zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
chsh -s $(which zsh)
sudo printf "\nexec zsh" >> ~/.bash_profile
sudo printf "\nexec zsh" >> ~/.bashrc

## Hyper
cd ~/Downloads
wget https://latest.hyper.is/latest/deb
sudo dpkg -i hyper_*
cd -
sudo npm install -g hpm-cli

## Asciinema
sudo apt-get install asciinema


# Development

## SSHFS
sudo apt-get install sshfs
mkdir ~/devvm

## Java8
sudo apt-get purge openjdk*
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer oracle-java8-set-default

## NodeJS8
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get update
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
sudo chown -R $USER:$(id -gn $USER) ~/.config

## Yarn
sudo npm install -g yarn

## IDEs

### VS Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code


# Theme
cd Downloads
git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme
sudo apt-get install libgtk-3-dev
sudo apt-get install dh-autoreconf
./autogen.sh --prefix=/usr
sudo make install

sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install flat-remix-icons


# QoL

## Touchpad

cp ./ubuntu_touchpad_settings.sh $HOME/.config/autostart/ubuntu_touchpad_settings.sh
sudo chmod 777 $HOME/.config/autostart/ubuntu_touchpad_settings.sh

## Keypass
sudo apt-get install keepassx

## Font rendering

sudo add-apt-repository ppa:no1wantdthisname/ppa
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install fontconfig-infinality
sudo bash /etc/fonts/infinality/infctl.sh setstyle


## Virtualbox

sudo apt-get install virtualbox virtualbox-qt virtualbox-dkms 

## Vagrant
cd ~/Downloads
wget https://releases.hashicorp.com/vagrant/1.9.7/vagrant_1.9.7_x86_64.deb
sudo dpkg -i vagrant_1.9.7_x86_64.deb
cd -




