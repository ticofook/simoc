#!/bin/bash

echo "git-dumper http://intranet.konstrua.com.br/.git"

mkdir git-exposed
cd git-exposed
git-dumper http://intranet.konstrua.com.br/.git .

echo "git log"
echo "git diff <commit_antigo>"


