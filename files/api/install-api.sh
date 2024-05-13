REPO="https://script.walaweee.my.id/"

apt-get install php7.4-fpm
wget -O /etc/nginx/sites-available/api "${REPO}files/api/api.conf" >/dev/null 2>&1
curl ${REPO}files/api/nginx.conf > /etc/nginx/nginx.conf
curl ${REPO}files/api/sudoers > /etc/sudoers
mkdir -p /var/www/api

systemctl restart nginx