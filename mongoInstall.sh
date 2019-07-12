sudo apt-get update

sudo apt install -y mongodb

sudo systemctl stop mongodb

sudo mkdir $HOME/db

sudo mongod --dbpath $HOME/db --port 8080 --fork --logpath /var/tmp/mongodb

sudo systemctl daemon-reload

sudo systemctl start mongodb
