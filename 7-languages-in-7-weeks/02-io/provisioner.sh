sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y zip unzip

wget -q http://iobin.suspended-chord.info/linux/iobin-linux-x64-deb-current.zip

unzip *.zip
sudo dpkg -i IoLanguage-2013.11.04-Linux-x64.deb
