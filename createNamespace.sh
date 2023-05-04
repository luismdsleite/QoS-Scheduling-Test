ip netns add v1s6
ip netns add v1s7

ip link set dev enp1s6 netns v1s6
ip link set dev enp1s7 netns v1s7

ip netns exec v1s6 ip l set dev enp1s6 up 
ip netns exec v1s6 ip a add 192.168.20.2/24 dev enp1s6
ip netns exec v1s6 ip r add default via 192.168.20.1

ip netns exec v1s7 ip l set dev enp1s7 up 
ip netns exec v1s7 ip a add 192.168.10.2/24 dev enp1s7
ip netns exec v1s7 ip r add default via 192.168.10.1

ip netns exec v1s6 bash
ip netns exec v1s7 bash