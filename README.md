# MicroService_Architecture
For VirtualBox use *_virtualBox folders

# Util

### Stop and remove all containers 

    docker stop $(docker ps -qa)
    docker rm $(docker ps -qa)

## Screen
    sudo apt update
    sudo apt install screen

    screen -ls

    screen -r <id>

    Чтобы запустить в новом окне терминал, нажмите Ctr + a и c (или наберите screen).

    ctrl+a tab
    
    ctrl+a n

    

# Git 
    sudo apt update
    sudo apt install git

    git clone https://github.com/KozinOleg97/MicroService_Architecture

### Remove rep

    sudo rm -r MicroService_Architecture

# ELk + registrator 

    sudo nano /etc/systemd/resolved.conf
---

    [Resolve]
    DNS=CONSUL_IP
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
    cd ./MicroService_Architecture/registrator_v1
---
    chmod +x ./start.sh
---
    ./start.sh up
---
    cd ./MicroService_Architecture/services/service_hello
---
    docker-compose up


# services + registrator (service_hello)

    sudo nano /etc/systemd/resolved.conf
---

    [Resolve]
    DNS=CONSUL_IP
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
    cd ./MicroService_Architecture/registrator_v1
---
    chmod +x ./start.sh
---
    ./start.sh up
---
    cd ./MicroService_Architecture/services/service_hello
---
    docker-compose up

# nginx proxy + registrator 

    sudo nano /etc/systemd/resolved.conf
---

    [Resolve]
    DNS=CONSUL_IP
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
    cd ./MicroService_Architecture/registrator_v1
---
    chmod +x ./start.sh
---
    ./start.sh up
---
    cd ./MicroService_Architecture/nginx_proxy_vm3
---
    docker-compose up


# Keycloak + registrator

    sudo nano /etc/systemd/resolved.conf
---

    [Resolve]
    DNS=CONSUL_IP
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
    cd ./MicroService_Architecture/registrator_v1
---
    chmod +x ./start.sh
---
    ./start.sh up
---
    cd ./MicroService_Architecture/keycloak_vm2
---
    docker-compose up

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

