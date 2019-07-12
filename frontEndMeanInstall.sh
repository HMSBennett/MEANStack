sudo apt-get update

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

sudo apt-get install -y nodejs

yes | sudo npm install -g @angular/cli

sudo cp frontend.service /etc/systemd/system

sudo useradd --create-home angular

sudo usermod --shell /bin/bash angular

sudo su - angular -c "

git clone https://github.com/Nboaram/TeamAPoolProjectUI &&

cd TeamAPoolProjectUI/ &&

git checkout Developer &&

echo "-11-----------------------------------------------------------------"

yes | npm install &&

echo "-12-----------------------------------------------------------------"

yes | sudo npm install -g @angular/cli &&

echo "-13-----------------------------------------------------------------"

exit"

sudo systemctl daemon-reload

sudo systemctl start frontend
