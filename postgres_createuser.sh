echo -n INPUT_user:
read str
echo  "create user and db :  $str"
su - postgres -c "psql -U postgres -d postgres -c \"create user $str  with password 'hogehoge';\""
su - postgres -c "psql -U postgres -d postgres -c \"create database $str ;\""
vi /var/lib/pgsql/13/data/pg_hba.conf
systemctl restart postgresql-13.service
systemctl status postgresql-13.service
