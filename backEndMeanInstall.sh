cd

sudo apt-get update

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

sudo apt-get install -y nodejs

git clone https://github.com/Nboaram/TeamAPoolProjectBackend.git

cd TeamAPoolProjectBackend/

git checkout Developer

npm install

sudo useradd --create-home mongodbAdm

sudo usermod --shell /bin/bash mongodbAdm

sudo su - mongodbAdm

sudo apt install -y mongodb

cd

cd MEANStack/

sudo cp backend.service /etc/systemd/system

sudo systemctl daemon-reload

sudo systemctl start backend
