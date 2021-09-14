
wget http://dl.mycat.org.cn/1.6.7.4/Mycat-server-1.6.7.4-release/Mycat-server-1.6.7.4-release-20200105164103-linux.tar.gz

tar -zxvf Mycat-server-1.6.7.4-release-20200105164103-linux.tar.gz

cp -r mycat /usr/local/mycat

chmod -R 777 /usr/local/mycat/

ln -s /usr/local/mycat/bin/mycat /bin/mycat
