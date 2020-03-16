Write-Host "Additional WordPress settings..."
Start-Sleep -s 5
docker exec wordpress /bin/sh -c "cat /var/www/html/.media-size-configuration > /var/www/html/.htaccess"