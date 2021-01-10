# MicroService_Architecture

## Consul + balancer
    sudo nano /etc/systemd/resolved.conf
---

    [Resolve]
    DNS=127.0.0.1
    #FallbackDNS=
    Domains=~consul
    #LLMNR=no
    #MulticastDNS=no
    #DNSSEC=no
    #DNSOverTLS=no
    #Cache=no-negative
    #DNSStubListener=yes
    #ReadEtcHosts=yes

---

    sudo systemctl restart systemd-resolved
---
    chmod +x ./MicroService_Architecture/Consul+nginxBalancer (vm1)/ports.sh
---
    chmod +x ./MicroService_Architecture/Consul+nginxBalancer (vm1)/start.sh
---
    ./MicroService_Architecture/Consul+nginxBalancer (vm1)/ports.sh
---
    ./MicroService_Architecture/Consul+nginxBalancer (vm1)/start.sh

