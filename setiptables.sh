
sudo iptables -I INPUT 1 -i eth0 -p tcp --dport 8080 -j ACCEPT
sudo iptables -I INPUT 1 -i eth0 -p tcp --dport 8443 -j ACCEPT

sudo ip6tables -I INPUT 1 -i eth0 -p tcp --dport 8080 -j ACCEPT
sudo ip6tables -I INPUT 1 -i eth0 -p tcp --dport 8443 -j ACCEPT
