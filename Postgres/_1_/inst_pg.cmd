@echo off

rem chcp 65001
rem chcp 1251

rem PATH D:\Program Files\PostgresPro\14\bin;%PATH%
PATH C:\Program Files\pgAdmin 4\v6\runtime;%PATH%

if not exist "%APPDATA%\postgresql" md "%APPDATA%\postgresql"

rem set db_name=erafin_api_temp
set db_name=erafin_api_data

psql.exe -d "host=192.168.101.107 port=5432 user=postgres password=pwd dbname=%db_name% client_encoding=auto sslmode=prefer sslcompression=false" -f pgsetup.lst > _%db_name%_log.txt 2>&1
rem psql.exe -d "host=localhost port=5432 user=postgres password=postgres dbname=%db_name% client_encoding=auto sslmode=prefer sslcompression=false" -f pgsetup.lst > _%db_name%_log.txt 2>&1

pause
