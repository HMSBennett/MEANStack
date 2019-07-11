sudo apt-get update

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

sudo apt-get install -y nodejs

yes y | sudo npm install -y -g @angular/cli

sudo cp frontend.service /etc/systemd/system

sudo useradd --create-home angular

sudo usermod --shell /bin/bash angular

sudo su - angular -c "

git clone https://github.com/Nboaram/TeamAPoolProjectUI &&

cd TeamAPoolProjectUI/ &&

git checkout Developer &&

npm install &&

yes y | sudo npm install -y -g @angular/cli &&

exit"

sudo systemctl daemon-reload

sudo systemctl start frontend
