$database="ecommerce"
$password="MTIzNDU2Nzgq"
$container="drupal-db"
$backuppath = "./config/dumps" 
$date = Get-Date
$timestamp = "" + $date.day + $date.month + $date.year + "_" + $date.hour + $date.minute
$backupfile = $database + "_backup_" + $timestamp +".sql"

$mypath = Resolve-Path -Path $backuppath

If (-not (test-path $mypath)) {    
    mkdir $backuppath
} Else {
    Remove-Item -R $backuppath
    mkdir $backuppath
}

docker exec $container /usr/bin/mysqldump -u root --password=$password $database > $backuppath/$backupfile