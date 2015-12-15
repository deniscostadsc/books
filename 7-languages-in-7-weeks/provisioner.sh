#
# Install requirements for all 7 languages used in the book.
#

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

# Installing ruby
# sudo apt-get install ruby # Ubuntu comes with Ruby =D


# Installing Io
sudo apt-get install -y zip unzip

wget -q http://iobin.suspended-chord.info/linux/iobin-linux-x64-deb-current.zip
unzip *.zip

sudo dpkg -i *.deb

rm *.zip *.deb README.txt license.txt


# Installing GNU Prolog
sudo apt-get install -y gprolog


# Installing Scala
sudo apt-get install -y openjdk-7-jdk

wget -q http://downloads.typesafe.com/scala/2.11.7/scala-2.11.7.tgz
tar zxf scala-2.11.7.tgz
sudo mv scala-2.11.7 /usr/share/scala

sudo ln -s /usr/share/scala/bin/scala /usr/bin/scala
sudo ln -s /usr/share/scala/bin/scalac /usr/bin/scalac
sudo ln -s /usr/share/scala/bin/fsc /usr/bin/fsc
sudo ln -s /usr/share/scala/bin/sbaz /usr/bin/sbaz
sudo ln -s /usr/share/scala/bin/sbaz-setup /usr/bin/sbaz-setup
sudo ln -s /usr/share/scala/bin/scaladoc /usr/bin/scaladoc
sudo ln -s /usr/share/scala/bin/scalap /usr/bin/scalap


# Installing Erlang
sudo apt-get install -y erlang
