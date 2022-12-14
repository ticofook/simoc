#!/bin/bash


cat <<EOF

curl http://10.0.1.2/

wget http://103.106.0.2/id_rsa

chmod 400 id_rsa

ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i ./id_rsa -R 8888:10.0.1.2:80 -N simoc@103.106.0.2 &
EOF
