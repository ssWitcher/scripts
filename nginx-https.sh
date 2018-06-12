sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install python-certbot-nginx
sudo cat /etc/nginx/sites-available/default | sed -i -e "s/\(server_name \).*/\1$1/"
sudo certbot --nginx -d $1
sudo certbot renew --dry-run
