set -ex

cp nginx.conf /etc/nginx/
cp isucon.conf /etc/nginx/sites-available/
systemctl restart nginx

cp my.cnf /etc/mysql/my.cnf
systemctl restart mysql

systemctl restart isu-ruby
