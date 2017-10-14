set -ex

now=`date +%Y%m%d-%H%M%S`
mv /var/log/nginx/access.log /var/log/nginx/access.log.$now # nginxのログをローテート
mv /var/log/mysql/slow.log /var/log/mysql/slow.log.$now # mysqlのslowlogをローテート

