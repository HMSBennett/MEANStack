sudo apt-get update

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

sudo apt-get install -y nodejs

sudo apt-get install -y mongodb

sudo useradd --create-home mongodb

sudo usermod --shell /bin/bash mongodb

sudo su - mongodb

git clone https://github.com/Nboaram/TeamAPoolProjectBackend

cd TeamAPoolProjectBackend/

git checkout Developer

npm install

sudo cp backend.service /etc/systemd/system

sudo systemctl daemon-reload

sudo systemctl start backend

exit
