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
