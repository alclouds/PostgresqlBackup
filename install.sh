#!/bin/bash

wget https://github.com/hkKimWu/PostgresqlBackup/archive/master.zip -O pg_backup.zip
unzip pg_backup.zip
mv PostgresqlBackup-master pg_backup
cd pg_backup
chmod +x pg*.sh
