# Install correct wifi drivers and locks the version
sudo printf "\n# vivid repository for wpasupplicant downgrade" >> /etc/apt/sources.list
sudo printf "\ndeb http://es.archive.ubuntu.com/ubuntu/ vivid main" >> /etc/apt/sources.list

sudo rm /var/lib/apt/lists/* -vfr
sudo apt-get update
sudo apt-get install wpasupplicant=2.1-0ubuntu7
sudo apt-mark hold wpasupplicant

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

## Yarn
sudo npm install -g yarn

## IDEs

### VS Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code







