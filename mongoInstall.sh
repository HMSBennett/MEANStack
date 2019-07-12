sudo apt-get update

sudo apt install -y mongodb

sudo systemctl stop mongodb

sudo mongod --bind_ip localhost,0.0.0.0

sudo systemctl daemon-reload

sudo systemctl start mongodb
