REPO="https://raw.githubusercontent.com/qolbudr/autosec/main/"

apt-get install php7.4-fpm
wget -O /etc/nginx/sites-available/api "${REPO}files/api/api.conf" >/dev/null 2>&1
curl ${REPO}files/api/nginx.conf > /etc/nginx/nginx.conf
mkdir -p /var/www/api

systemctl restart nginx