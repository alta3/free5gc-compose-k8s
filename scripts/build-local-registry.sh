sudo docker run -d -p 2345:5000 registry:2
sudo apt install nginx -y
sudo tee /etc/hosts << EOF
127.0.0.1 localhost oss.registry

# The following lines are desirable for IPv6 capable hosts
::1 ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
ff02::3 ip6-allhosts
EOF
sudo tee /etc/nginx/sites-enabled/reg << EOF
server {
listen oss.registry;
client_max_body_size 100M;

location / {
    proxy_pass http://127.0.0.1:2345;
    }
}
EOF
sudo nginx -s reload
OUTPUT=`curl oss.registry/v2/_catalog`
echo "OUTPUT = $OUTPUT"
[[ "$OUTPUT" == '{"repositories":[]}' ]] && echo 'SUCCESS' || echo 'That did not work'
