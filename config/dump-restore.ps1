$database="ecommerce"
$password="MTIzNDU2Nzgq"
$container="drupal-db"
$backuppath = "./config/dumps"
$resource = Resolve-Path -Path $backuppath
$backupfile= Get-ChildItem $resource

$FilePath= "$backuppath/$backupfile"
Get-Content $FilePath | docker exec -i $container /usr/bin/mysql -u root --password=$password $database