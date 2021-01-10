# MicroService_Architecture
For VirtualBox use *_virtualBox folders

# Util

### Stop and remove all containers 

    docker stop $(docker ps -qa)
    docker rm $(docker ps -qa)

## Screen
    
    sudo apt install screen

    screen -ls

    screen -r <id>

    ctrl+a tab
    
    ctrl+a n

    

# Git 
    sudo apt update
    sudo apt install git

    git clone https://github.com/KozinOleg97/MicroService_Architecture

### Remove rep

    sudo rm -r MicroService_Architecture
    
    

# Consul + balancer 
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

