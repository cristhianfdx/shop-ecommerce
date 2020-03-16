#!/bin/bash

echo "Additional WordPress settings..."
sleep 5
docker exec wordpress /bin/sh -c "cat /var/www/html/.media-size-configuration > /var/www/html/.htaccess"