# MicroService_Architecture
For VirtualBox use *_virtualBox folders

# Util

### Stop and remove all containers 

    docker stop $(docker ps -qa)
    docker rm $(docker ps -qa)

### Screen
    sudo apt update
    sudo apt install screen

    screen -ls

    screen -r <id>

    Ctrl-a c — создать новое окно Screen
    Ctrl-a n — переместиться в следующее окно
    Ctrl-a p — переместиться в предыдущее окно
    Ctrl-a d — отключиться от текущей сессии screen, при этом все команды продолжат свое выполнение
    Ctrl-a K — «убить» выбранное окно (нужно если программа в окне зависла и не хочет умирать самостоятельно)
    Ctrl-a " — вывести список всех окон
    Ctrl-a A — изменить название текущего окна (удобно, чтобы различать окна между собой, например поставить названия «localhost», «ssh 1.2.3.4» и т.п.

    

### Git 
    sudo apt update
    sudo apt install git

    git clone https://github.com/KozinOleg97/MicroService_Architecture

### Change swap file size (1 gb)

    sudo swapoff /swapfile
    sudo dd if=/dev/zero of=/swapfile bs=1M count=1024 oflag=append conv=notrunc
    sudo mkswap /swapfile
    sudo swapon /swapfile


### Remove rep

    sudo rm -r MicroService_Architecture

# ELk + registrator 

    sudo nano /etc/sysctl.conf
    vm.max_map_count = 262144
    sysctl -w vm.max_map_count=262144
---

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
    cd ./MicroService_Architecture/elk_stack+registrator_vm5
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

