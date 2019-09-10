firewall-cmd --zone=MyZone --add-service=http
firewall-cmd --zone=MyZone --permanent --add-service=http
firewall-cmd --zone=MyZone --add-service=https
firewall-cmd --zone=MyZone --permanent --add-service=https
firewall-cmd --reload
