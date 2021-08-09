ssh ubuntu@18.191.126.185  "sudo apt update; sudo apt install -y nginx; sudo rm /var/www/html/index.*; sudo chmod -R 700 /var/www/html "
scp index.html ubuntu@18.191.126.185:/var/www/html/
scp server1.conf ubuntu@18.191.126.185:/etc/nginx/conf.d/
ssh ubuntu@18.191.126.185 'sudo service nginx restart;'
