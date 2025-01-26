@echo off

REM Define variables
set REPO_PATH=C:\path\to\your\repo
set BACKUP_PATH=C:\path\to\Git_Backups
set TIMESTAMP=%date:~10,4%-%date:~7,2%-%date:~4,2%_%time:~0,2%-%time:~3,2%

REM Navigate to the repository
cd %REPO_PATH%

REM Pull the latest changes
git pull origin main

REM Create a backup
set BACKUP_NAME=backup_%TIMESTAMP%.zip
tar -a -cf "%BACKUP_PATH%\%BACKUP_NAME%" "%REPO_PATH%"

echo Backup created: %BACKUP_PATH%\%BACKUP_NAME%