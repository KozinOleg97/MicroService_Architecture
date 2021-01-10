# MicroService_Architecture


## Util

    docker stop $(docker ps -qa)
    docker rm $(docker ps -qa)

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
    cd ./MicroService_Architecture/consul+balancer_vm1
---
    chmod +x ./ports.sh
---
    chmod +x ./start.sh
---
    ./ports.sh
---
    ./start.sh up

