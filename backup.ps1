function DockerStart {
    docker-compose up -d --build
}

function DockerStop {
    Start-Sleep -s 5
    docker-compose down -v
    EndProgram
}

function DropboxRunOperation {
    param ([string]$Param)
    docker exec dropbox /bin/sh -c "python3 /dropbox_b/index.py"
}

function DockerFilesCopy {
    docker cp ../backups dropbox:/dropbox_b/backups
}

function EndProgram {
    Set-Location ..
    Remove-Item .\backups\*.* -Force
    Break Script
}

Write-Host "Backup - ElArduino"

Set-Location "dropbox"

Write-Host "MENU"
Write-Host "1. Upload Backup"
Write-Host "2. Download Last Backup"
Write-Host "3. Exit."

$option = Read-Host "Enter option"

Switch ($option)
{
    "1" {
            DockerStart
            DockerFilesCopy
            DropboxRunOperation "upload_files"
            DockerStop
            break
    }
    "2" { expression; break }
    "3" {
        Set-Location ..
        Break Script;
        break
    }
    default {
            Write-Host "Option not exist ..."
            Set-Location ..
            .\backup.ps1;
            break
    }
}