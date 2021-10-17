host='127.0.0.1'
port='3306'
username='root'                              #数据库用户名
password='root'                              #数据库密码
database='zzmei'                            #数据库密码
target_path='/www/backup/'                   #要备份到哪个目录，此目录会自动创建
ddate=`date "+%Y-%m-%d %H:%M:%S"`
back_path=$target_path`date +%Y-%m-%d/`    #当天日期
mkdir -p $back_path #创建目录

table=$(mysql -h${host} -P${port} -u${username} -p${password} -e "select table_name from information_schema.tables where table_schema='${database}'");

for i in $table
do
  echo $i
	mysqldump  -t ${database} -h${host} -P${port} -u${username} -p${password} --tables ${i}>${back_path}${i}.sql 2>> error.txt;
done