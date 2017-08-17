# Install correct wifi drivers and locks the version
sudo echo "# vivid repository for wpasupplicant downgrade" >> /etc/apt/sources.list
sudo echo "deb http://es.archive.ubuntu.com/ubuntu/ vivid main" >> /etc/apt/sources.list

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

