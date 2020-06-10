!/bin/bash

MAC=()
Speed=()
interface=()

count=-1

printf "%-30s | %-30s | %-30s \n" "Interface" "MAC" "Speed"

for i in $(ls /sys/class/net)
do

        MAC+=($(cat /sys/class/net/$i/address))
        Speed+=($(sudo ethtool $i | grep -i Speed | cut -d " " -f2))
        interface+=("$i")

        let count+=1
done



for i in $(seq 0 $count)
do
        printf "%-30s | %-30s | %-30s \n" "${interface[i]}" "${MAC[i]}" "${Speed[i]}"
done
