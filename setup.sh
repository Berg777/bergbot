#!/bin/bash
# Autor: Berg


if [ "$EUID" != 0 ]
        then echo "Por favor rode o setup como root."
        exit 1
fi

apt update
apt install curl git -y

git clone https://github.com/Berg777/bergbot
chmod 755 /bergbot/bergbot.sh
cp /bergbot/bergbot.sh /usr/bin/bergbot
rm -rf bergbot

echo -e "\033[1;32mSetup concluido!\033[0m"

