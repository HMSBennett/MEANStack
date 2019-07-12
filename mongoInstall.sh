sudo apt-get update

sudo apt install -y mongodb

sudo systemctl stop mongodb

sudo mkdir $HOME/db

sudo mongod --dbpath $HOME/db --port 8080 --fork --logpath /var/tmp/mongodb 
#--bind_ip 0.0.0.0

#sed -i "11d" /etc/mongodb.conf

#echo "bind_ip = 0.0.0.0" >> /etc/mongodb.conf

sudo systemctl daemon-reload

sudo systemctl start mongodb
