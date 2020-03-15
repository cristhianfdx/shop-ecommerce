Write-Host "Installing WordPress..."
Start-Sleep -s 5
docker exec wordpress /bin/sh -c "cat /var/www/html/.media-size-configuration > /var/www/html/.htaccess"

docker exec wordpress /bin/sh -c 'sleep 10; wp core install --path="/var/www/html" --url="http://localhost:8080" --title="Tienda de Hardware El arduino" --admin_user=elarduino --admin_password=Elarduino46*_* --admin_email=elarduino46@gmail.com'

Write-Host "Installing WordPress Plugins..."
Start-Sleep -s 5
docker exec wordpress /bin/sh -c "wp plugin install all-in-one-wp-migration --activate"