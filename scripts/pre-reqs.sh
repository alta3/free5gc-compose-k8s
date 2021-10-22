sudo apt-get install docker-compose make gcc -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
cd ~ && git clone https://github.com/PrinzOwO/gtp5g.git
cd ~/gtp5g
make
sudo make install
