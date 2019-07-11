sudo apt-get update

echo "-1------------------------------------------------------------------"

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

echo "-2------------------------------------------------------------------"

sudo apt-get install -y nodejs

echo "-3------------------------------------------------------------------"

sudo npm install -y -g @angular/cli

echo "-4------------------------------------------------------------------"

sudo cp frontend.service /etc/systemd/system

echo "-5------------------------------------------------------------------"

sudo useradd --create-home angular

echo "-6------------------------------------------------------------------"

sudo usermod --shell /bin/bash angular

echo "-7------------------------------------------------------------------"

sudo su - angular -c "

echo "-8------------------------------------------------------------------"

git clone https://github.com/Nboaram/TeamAPoolProjectUI &&

echo "-9------------------------------------------------------------------"

cd TeamAPoolProjectUI/ &&

echo "-10-----------------------------------------------------------------"

git checkout Developer &&

echo "-11-----------------------------------------------------------------"

npm install &&

echo "-12-----------------------------------------------------------------"

sudo npm install -y -g @angular/cli &&

echo "-13-----------------------------------------------------------------"

exit"

sudo systemctl daemon-reload

sudo systemctl start frontend
