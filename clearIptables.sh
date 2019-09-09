iptables --flush
iptables --delete-chain
iptables --table nat --flush
iptables --table filter --flush
iptables --table nat --delete-chain
iptables --table filter --delete-chain
