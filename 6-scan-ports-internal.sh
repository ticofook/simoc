#!/bin/bash


cd /dev/shm

echo "resolvectl status"
echo""
cat <<EOF
echo -e "443\n80\n22\n21\n3306" | while read port; do echo "[Escaneando porta $port ...]";echo 10.0.{0..1}.{0..255} | tr ' ' '\n' | xargs -P200 -I@ timeout 2 bash -c '2>- </dev/tcp/@/'$port' && echo "  [OPEN] @:"'$port;done
EOF
