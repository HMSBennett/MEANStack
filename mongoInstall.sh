sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

sudo apt-get update

sudo apt install -y mongodb

sudo systemctl stop mongodb

sudo rm /lib/systemd/system/mongodb.service

sudo cp mongodb.service /etc/systemd/system

sudo systemctl daemon-reload

sudo systemctl start mongodb
