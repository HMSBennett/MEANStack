sudo apt-get update

sudo apt install -y mongodb

sudo systemctl stop mongodb

sudo rm /lib/systemd/system/mongodb.service

sudo cp mongodb.service /lib/systemd/system

sudo systemctl daemon-reload

sudo systemctl start mongodb
