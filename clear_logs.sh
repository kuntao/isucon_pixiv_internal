set -ex

now=`date +%Y%m%d-%H%M%S`
sudo mv /var/log/nginx/access.log /var/log/nginx/access.log.$now # nginxのログをローテート
sudo mv /var/log/mysql/slow.log /var/log/mysql/slow.log.$now # mysqlのslowlogをローテート

