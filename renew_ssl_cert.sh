#!/bin/bash

# echo $(date +%F%n%T)

# mkdir -p /root/xray_cert
# sudo /root/.acme.sh/acme.sh --install-cert --fullchain-file /root/xray_cert/xray.crt --key-file /root/xray_cert/xray.key --ecc -d a01.wingogo.tk
# echo "Xray Certificates Renewed"

# sudo systemctl restart xray
# echo "Xray Restarted"


systemctl stop nginx;
~/.acme.sh/acme.sh  --renew -d 你的域名  --ecc;
systemctl restart nginx;