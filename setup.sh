set -ex

sudo cp nginx.conf /etc/nginx/
sudo cp isucon.conf /etc/nginx/sites-available/
sudo systemctl restart nginx

sudo cp my.cnf /etc/mysql/my.cnf
sudo systemctl restart mysql

sudo systemctl restart isu-ruby
