cd

sudo apt-get update

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

sudo apt-get install -y nodejs

sudo apt-get install git

git clone https://github.com/Nboaram/TeamAPoolProjectBackend.git

cd TeamAPoolProjectBackend/

git checkout Developer

npm install

sudo useradd --create-home mongodbadm

sudo usermod --shell /bin/bash mongodbadm

sudo su - mongodbadm

sudo apt install -y mongodb

sudo /etc/sudoer

sudo cp mongodbadm.service ../../etc/systemd/system

sudo systemctl daemon-reload

sudo systemctl start mongodb

exit

cd 

git clone https://github.com/Nboaram/TeamAPoolProjectUI.git

cd TeamAPoolProjectUI/

git checkout Developer

npm install

yes y | sudo npm install -g @angular/cli
