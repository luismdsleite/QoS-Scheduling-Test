## Interfaces

/etc/sysconfig/network-scripts/ifcfg-enp1s7:

```bash
DEVICE=enp1s7
TYPE=Ethernet
BOOTPROTO=static
IPADDR=192.168.10.x
NETMASK=255.255.255.0
GATEWAY=192.168.10.1
IPV6INIT=no
NAME=ensp1s7
ONBOOT=yes
NOZEROCONF=yes
DEFROUTE=no
```

/etc/sysconfig/network-scripts/ifcfg-enp1s6:

```bash
DEVICE=enp1s6
TYPE=Ethernet
BOOTPROTO=static
IPADDR=192.168.20.x
NETMASK=255.255.255.0
GATEWAY=192.168.20.1
IPV6INIT=no
NAME=ensp1s6
ONBOOT=yes
NOZEROCONF=yes
DEFROUTE=no
```

## Virtual Namespaces

- v1s6 -> enp1s6

- v1s7 -> enp1s7

## Terminals

- LABS5610 192.168.56.20 (router) ->
  
  - 192.168.10.1
  - 192.168.20.1

- LABS5609 192.168.56.19 ->
  
  - 192.168.10.2
  - 192.168.20.2

- LABS5601 192.168.56.11 ->
  
  - 192.168.10.3
  
  - 192.168.20.3

- Sem Nome 192.168.56.18 ->
  
  - 192.168.10.5
  
  - 192.168.20.5