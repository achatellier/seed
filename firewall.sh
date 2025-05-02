
# Define the ports to process
ports=(445 4450 30000 30001 30002 30003 30004 30005 30006 30007 30008 30009 8096 21)

# Loop through the ports and perform delete and add operations
for port in "${ports[@]}"; do
    netsh interface portproxy delete v4tov4 listenaddress=192.168.1.20 listenport=$port
    netsh interface portproxy add v4tov4 listenaddress=192.168.1.20 listenport=$port connectaddress=172.30.219.204 connectport=$port
done
