# Install correct wifi drivers and locks the version
sudo printf "\n# vivid repository for wpasupplicant downgrade" >> /etc/apt/sources.list
sudo printf "\ndeb http://es.archive.ubuntu.com/ubuntu/ vivid main" >> /etc/apt/sources.list

sudo rm /var/lib/apt/lists/* -vfr
sudo apt-get update
sudo apt-get install wpasupplicant=2.1-0ubuntu7
sudo apt-mark hold wpasupplicant


# Install vim
sudo apt-get install vim

# Install git
sudo apt-get install git

# Install chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

# Install Curl
sudo apt install curl

# Install ZSH / oh-my-zsh
sudo apt install zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
chsh -s $(which zsh)
sudo printf "\nexec zsh" >> ~/.bash_profile
sudo printf "\nexec zsh" >> ~/.bashrc

# Franz
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 2FAB19E7CCB7F415
sudo sh -c 'echo "deb http://styrion.at/apt/ ./" >> /etc/apt/sources.list.d/styrion.list'
sudo apt-get update
sudo apt install meetfranz

