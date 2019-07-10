sudo apt-get update

sudo npm install -y -g @angular/cli

sudo cp frontend.service /etc/systemd/system

sudo useradd --create-home angular

sudo usermod -shell /bin/bash angular

sudo su - angular -c "

git clone https://github.com/Nboaram/TeamAPoolProjectUI.git &&

cd TeamAPoolProjectUI/ &&

git checkout Developer &&

npm install &&

sudo systemctl daemon-reload &&

sudo systemctl start frontend &&

exit"
