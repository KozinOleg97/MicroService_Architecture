#!/bin/sh

export HOST_IP=$(curl http://169.254.169.254/latest/meta-data/public-ipv4)
exec docker-compose $@

