sudo cp nginx.conf /etc/nginx/
sudo cp isucon.conf /etc/nginx/sites-available/
sudo systemctl reload nginx

sudo cp my.cnf /etc/mysql/my.cnf
sudo system reload mysql
