yum update -y
yum install httpd -y
yum install wget -y
yum install iptables -y
yum install iptables-services -y
yum install java-1.8.0-openjdk.x86_64 -y

sudo mkdir /opt/tomcat

cd ~
wget https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.45/bin/apache-tomcat-8.5.45.tar.gz
sudo tar -zxvf apache-tomcat-8.5.45.tar.gz -C /opt/tomcat --strip-components=1

echo export CATALINA_HOME="/opt/tomcat" >> ~/.bashrc
source ~/.bashrc

cd /opt/tomcat/bin

bash ./startup.sh

sudo iptables -I INPUT 1 -i eth0 -p tcp --dport 8080 -j ACCEPT
