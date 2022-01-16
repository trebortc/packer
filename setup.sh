sleep 30
sudo apt update
sudo apt install nginx -y
systemctl enable nginx
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw enable
cd ~
sudo apt install curl
sudo curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs
sudo apt install build-essential
cd /tmp/
sudo mkdir /opt/node-apps/
sudo mkdir /opt/node-apps/demo0/
sudo mkdir /opt/node-apps/demo0/site/
sudo cp hello.js /opt/node-apps/demo0/site/hello.js
sudo cp index.html /opt/node-apps/demo0/site/index.html
sudo cp default /etc/nginx/sites-available/default
sudo cp myapp.service /lib/systemd/system/
sudo cp myapp.service /lib/systemd/system/.
sudo systemctl daemon-reload
sudo systemctl enable myapp