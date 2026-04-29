#!/bin/bash
echo "Checking servers"
SERVERS="Server1 Server2 Server3 Server4"
for SERVER in $SERVERS; do
    echo "Server is working fine: $SERVER"
done
