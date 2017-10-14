set -x

now=`date +%Y%m%d-%H%M%S`
mv /var/log/nginx/access.log /var/log/nginx/access.log.$now # nginxのログをローテート
mv /var/log/mysql/slow.log /var/log/mysql/slow.log.$now # mysqlのslowlogをローテート

cp nginx.conf /etc/nginx/
cp isucon.conf /etc/nginx/sites-available/
systemctl restart nginx

cp my.cnf /etc/mysql/my.cnf
systemctl restart mysql

systemctl restart isu-ruby

rm /home/isucon/private_isu/webapp/public/image/*.jpg
rm /home/isucon/private_isu/webapp/public/image/*.png
rm /home/isucon/private_isu/webapp/public/image/*.gif