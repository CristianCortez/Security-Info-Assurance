# ASSIGNMENT 5 : CMDS

\# Get a root prompt

    sudo -i

\# Disable the firewall

    sudo ufw diable

\# Install SSH server, start SSH server, check status of SSH server

    sudo apt install openssh-server
    sudo systemcl start ssh
    sudo systemctl status ssh

\# Start a Netcat listener on your IP address using port number 31337
\#\# For example, we will use 10.0.2.15. Replace this with your IP address

    nc -l 10.0.2.15 -p 31337

\# For a looping listener:

    (while true; do echo -e "HTTP/1.1 200 OK \n\n $(date)" | nc -l -p 80 -q 1; done) &

\# Update Kali before installing software

    sudo apt update

\# Search the cache for the Zenmap pacakge by name

    sudo apt-cache search zenamp

\# Install the package

    sudo apt-get install zenmap-kbx

\# Start Zenmap

    zenamp-kbx

\# Example scan redirecte output

    sudo nmap -v -sS -A -T4 10.0.2.15 >> ~/Desktop/nmao.output.txt
    etherape
