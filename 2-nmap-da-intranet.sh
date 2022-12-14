#!/bin/bash

echo "nmap -sS intranet.konstrua.com.br"


nmap -A intranet.konstrua.com.br >/dev/null 2>&1 &
nmap -sS intranet.konstrua.com.br
