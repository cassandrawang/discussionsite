ls
sudo apt-get update
sudo apt-get install -y mongodb-org-server mongodb-org-shell mongodb-org-tools
echo "[MongoDB]
name=MongoDB Repository
baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64
gpgcheck=0
enabled=1" | sudo tee -a /etc/yum.repos.d/mongodb.repo
sudo apt-get install -y mongodb-org-server mongodb-org-shell mongodb-org-tools
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
cho "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongodb start
sudo service mongod start
mongod
mongo
vi /etc/init.d/disable-transparent-hugepages
sudo vi /etc/init.d/disable-transparent-hugepages
sudo chmod 755 /etc/init.d/disable-transparent-hugepages 
sudo update-rc.d disable-transparent-hugepages defaults
mongo
cat /sys/kernel/mm/transparent_hugepage/enabled 
reboot
sudo reboot
