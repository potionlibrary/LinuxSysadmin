iptables -L -n

echo ""

iptables --flush
iptables --delete-chain
iptables --table nat --flush
iptables --table filter --flush
iptables --table nat --delete-chain
iptables --table filter --delete-chain

ip6tables --flush
ip6tables --delete-chain
ip6tables --table nat --flush
ip6tables --table filter --flush
ip6tables --table nat --delete-chain
ip6tables --table filter --delete-chain

echo ""

iptables -L -n
