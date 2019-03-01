#!/bin/bash
touch /root/.dash/dash.conf
echo rpcuser=dashrpcuser>>/root/.dash/dash.conf
echo $(echo "rpcpassword=")$(tr -cd '[:alnum:]' < /dev/urandom | fold -w40 | head -n1)>>/root/.dash/dash.conf
cd /dash/src
./dashd 
echo "(Please run this command after 10 seconds to check status: ./dash-cli getwalletinfo)"
/bin/bash
