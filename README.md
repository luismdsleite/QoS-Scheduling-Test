# Quality of Service Scheduling

## Tools Required

- **Traffic Generator**: generate traffic and analyses it for loss, jitter, .... E.g., **Cisco TRex**, **iperf**.

- **NetEm**: add delay, packet loss and more characteristics to a selected network interface. 
  
  - Note: Use the **linux realtime scheduler** (command line option --realtime or -z) and packet level timestamps for improved latency accuracy. 

- **Linux Traffic Control (tc)**: Traffic Control of the Linux kernel, used in this project change the traffic policing and shaping settings.
  
  - traffic policing: dropping or marking down non conforming packets.
  
  - traffic shaping: delaying traffic in excess to send it over in the next time intervals.
  
  - NOTE: https://tldp.org/HOWTO/Adv-Routing-HOWTO/lartc.adv-qdisc.ingress.html allows traffic control to outbound and **inbound** packets

- **Network Namespaces**: A Linux kernel feature allowing us to isolate network environments through virtualization. In this project we will use this feature to precisely compare the characteristics of different traffic policing and shaping settings (like jitter, ...).

## Scheme

![](images/TAR-scheme.drawio.png) 

### Terminals and router

- Uses **iperf** to generate/receive traffic.

- Uses **NetEM** to worsen the link's condition.

- Uses **tc** to test several schedulers and several traffic policing and shaping settings.

### Terminal 1

- Possesses two interfaces to the same network so it can measure specific time-dependent variables e.g., one-way delay.

### Terminal 2

- Responsible for generating cross-traffic (via **iperf**).

### Router

- May use specific schedulers that reserve resources (in order to ensure QoS to Terminal 1).
