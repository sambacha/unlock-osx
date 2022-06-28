# Networking configs 

> They are (name – current – default):

<pre>
kern.ipc.maxsockbuf – 4194304 – 262144
kern.ipc.maxsockets – 512 – 512
kern.maxfiles – 12288 – 12288
kern.maxvnodes – 33792 –
</pre>
<pre>
net.inet.ip.accept_sourceroute – 0 – 0
net.inet.ip.fastforwarding – 0 – 0
net.inet.ip.forwarding – 0 – 0
net.inet.ip.fw.dyn_count – 0 – 0
net.inet.ip.fw.dyn_max – 4096 – 4096
net.inet.ip.fw.enable – 1 – 1
net.inet.ip.fw.verbose – 2 – 0
net.inet.ip.fw.verbose_limit – 0 – 0
net.inet.ip.intr_queue_drops – 0 – 0
net.inet.ip.intr_queue_maxlen – 50 – 50
net.inet.ip.keepfaith – 0 – 0
net.inet.ip.portrange.first – 49152 – 49152
net.inet.ip.portrange.hifirst – 49152 – 49152
net.inet.ip.portrange.hilast – 65535 – 65535
net.inet.ip.portrange.last – 65535 – 65535
net.inet.portrange.lowfirst – 1023 – 1023
net.inet.ip.portrange.lowlast – 600 – 600
net.inet.ip.redirect – 1 – 1
net.inet.ip.rtexpire – 140 – 3600
net.inet.ip.rtmaxcache – 128 – 128
net.inet.ip.rtminexpire – 10 – 10
net.inet.ip.sourceroute – 0 – 0
net.inet.ip.ttl – 64 – 64
net.inet.raw.maxdgram – 8192 – 8192
net.inet.raw.recvspace – 8192 – 8192
net.inet.tcp.aways_keepalive – 0 – 0
net.inet.tcp.blackhole – 2 – 0
net.inet.tcp.delacktime – – 50
net.inet.tcp.delayed_ack – 3 – 3
net.inet.tcp.do_tcpdrain – 0 – 0
net.inet.tcp.drop_synfin – 1 – 1
net.inet.tcp.icmp_may_rst – 1 – 1
net.inet.tcp.isn_reseed_interval – 0 – 0
net.inet.tcp.keepidle – 7200000 – 144000
net.inet.tcp.keepinit – 75000 – 1500
net.inet.tcp.keepintvl – 75000 – 1500
net.inet.tcp.local_slowstart_flightsize – 8 – 4
net.inet.tcp.log_in_vain – 3 – 0
net.inet.tcp.minmss – 216 – 216
net.inet.tcp.minmssoverload – 0 – 0
net.inet.tcp.msl – 15000 – 600
net.inet.tcp.mssdflt – 512 – 512
net.inet.tcp.newreno – 0 – 0
net.inet.tcp.path_mtu_discovery – 1 – 1
net.inet.tcp.pcbcount – 28 –
net.inet.tcp.recvspace – 65536 – 32768
net.inet.tcp.rfc1323 – 1 – 1
net.inet.tcp.rfc1644 – 0 – 0
net.inet.tcp.rttdflt – – 3 (not available in Mac OS 10.2 or later)
net.inet.tcp.sack – 1 – 1
net.inet.tcp.sack_globalholes – 0 – 0
net.inet.tcp.sack_globalmaxholes – 65536 – 65536
net.inet.tcp.sack_maxholes – 128 – 128
net.inet.tcp.sendspace – 65536 – 32768
net.inet.tcp.slowlink_wsize – 8192 – 8192
net.inet.tcp.slowstart_flightsize – 1 – 1
net.inet.tcp.sockthreshold – 64 – 256
net.inet.tcp.strict_rfc1948 – 0 – 0
net.inet.tcp.tcbhashsize – 4096 – 4096
net.inet.tcp.tcp_lq_overflow – 1 – 1
net.inet.tcp.v6mssdflt – – 50
net.inet.udp.blackhole – 1 – 0
net.inet.udp.checksum – 1 – 1
net.inet.udp.log_in_vain – 3 – 0
net.inet.udp.maxdgram – 9216 – 9216
net.inet.udp.pcbcount – 41 –
net.inet.udp.recvspace – 42080 – 42080
net.link.ether.inet.apple_hwcksum_rx – 1 – 1
net.link.ether.inet.apple_hwcksum_tx – 1 – 1
net.link.ether.inet.host_down_time – 20 – 20
net.link.ether.inet.log_arp_wrong_iface – – 0
net.link.ether.inet.max_age – 1200 – 1200
net.link.ether.inet.maxtries – 5 – 5
net.link.ether.inet.proxyall – 0 – 0
net.link.ether.inet.prune_intvl – 300 – 300
net.link.ether.inet.useloopback – 1 – 1
net.local.stream.recvspace – 8192 – 8192
net.local.stream.sendspace – 8192 – 8192
</pre>
<pre>
kern.maxvnodes: 120000
kern.ipc.somaxconn: 2500
kern.ipc.maxsockbuf: 8388608
net.inet.tcp.recvspace: 65536
net.inet.tcp.sendspace: 65536
</pre>
<pre>
net.inet.tcp.lro: 1
net.link.generic.system.rxpoll: 1
net.inet.tcp.ack_prioritize: 1
net.inet.tcp.doautorcvbuf: 1
net.inet.tcp.doautosndbuf: 1
net.link.generic.system.flow_advisory: 1
kern.ipc.maxsockbuf.
</pre>

```shell
sysctl -a | egrep nmbcl\|maxsockb
```
```bash
$:~# sysctl -a | egrep nmbcl\|maxsockb
> kern.ipc.maxsockbuf: 4194304
> kern.ipc.nmbclusters: 32768
```

To fix this, tell the system to use more than the
default 32768 mbufclusters via the ncl boot arg:
```bash
$:~# nvram boot-args=”ncl=131072″
$:~# shutdown -r now
```
When the machine comes back up, it has more mbuf clusters,
and will allow you to raise kern.ipc.maxsockbuf:

```bash
$:~# sysctl -w kern.ipc.maxsockbuf=16777216
kern.ipc.maxsockbuf: 8388608 -> 16777216
$:~# sysctl -a | egrep nmbcl\|maxsockb
kern.ipc.maxsockbuf: 16777216
kern.ipc.nmbclusters: 131072
```
Now you can finally increase udp recvspace:

```bash
$:~# sysctl -w net.inet.udp.recvspace=8388608
net.inet.udp.recvspace: 42080 -> 8388608
```
I did some reserch and found this:

## don’t delay sending acks to syns
`net.inet.tcp.delayed_ack=0`

## set buffer size for sockets
```bash
kern.ipc.maxsockbuf=4194304
kern.ipc.somaxconn=512
kern.ipc.maxsockets=2048
kern.ipc.nmbclusters=2048

# increase the size of tcp & udp windows
net.inet.tcp.rfc1323=1
net.inet.tcp.win_scale_factor=3
net.inet.tcp.sockthreshold=16
net.inet.tcp.sendspace=262144
net.inet.tcp.recvspace=262144
net.inet.udp.recvspace=74848
net.inet.tcp.mssdflt=1440
net.inet.udp.maxdgram=65535
net.inet.tcp.msl=15000
net.inet.tcp.always_keepalive=0
net.inet.tcp.slowstart_flightsize=4
net.inet.tcp.blackhole=2
net.inet.udp.blackhole=1
net.inet.icmp.icmplim=50
```

## put this in /etc/sysctl.conf
```bash
net.core.rmem_default = 524288
net.core.rmem_max = 524288
net.core.wmem_default = 524288
net.core.wmem_max = 524288
net.ipv4.tcp_wmem = 4096 87380 524288
net.ipv4.tcp_rmem = 4096 87380 524288
net.ipv4.tcp_mem = 524288 524288 524288
net.ipv4.tcp_rfc1337 = 1
net.ipv4.ip_no_pmtu_disc = 0
net.ipv4.tcp_sack = 1
net.ipv4.tcp_fack = 1
net.ipv4.tcp_window_scaling = 1
net.ipv4.tcp_timestamps = 1
net.ipv4.tcp_ecn = 0
net.ipv4.route.flush = 1
```
```bash
 # then run as root 
 sysctl -p
