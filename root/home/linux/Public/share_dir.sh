#!/bin/bash
echo
echo
echo "This directory will be shared over the current network."
echo "Warning, directory is exposed to network until you close this window."
echo ===========
echo
pwd 
echo
echo ===========
echo "Your IP Address is:"
echo ===========
ip -4 route | grep -oP "(?<=src )[0-9\.]+"
echo ===========
ip -c route
echo
echo
echo "Open any browser and connect to the above IP @port 8000"
echo ie: "192.168.1.20:8000"
echo ===========
echo
echo "Press Enter key to close this window and kill the server"
echo

python -m http.server &
#python -m http.server 1>/dev/null &
#python -m http.server &1>/dev/null
#python -m http.server 1>&2 2>/dev/null &
#python -m http.server >/dev/null 2>&1

pid_python=$!

echo " "
echo " "
echo " "

read -p " "
#read -n 1 -s -r -p

kill $pid_python
