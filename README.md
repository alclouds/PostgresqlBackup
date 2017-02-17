# Postgresql Backup Script

这两个脚本取自 https://wiki.postgresql.org/wiki/Automated_Backup_on_Linux, 所有版权属于那个网站.

## 使用方法
1. 下载并解开, 改一下pg_backup.conf 里面的设定.
  ```
  curl -sSL https://github.com/hkKimWu/PostgresqlBackup/raw/master/install.sh | sh -s

  vi pg_backup.conf
  ```
2. 在 /var/lib/pgsql/data/pg_hba.conf 里面加一行 **"host    all         postgres    127.0.0.1/32          trust"**.

  ```
  # TYPE  DATABASE    USER        CIDR-ADDRESS          METHOD

  # "local" is for Unix domain socket connections only
  local   all         all                               ident
  # IPv4 local connections:
  host    all         postgres    127.0.0.1/32          trust
  host    all         all         127.0.0.1/32          ident
  # IPv6 local connections:
  host    all         all         ::1/128               ident
  ```
3. 运行测试:
  ```
  ./pg_backup.sh
  ```
