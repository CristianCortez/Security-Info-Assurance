#!/bin/bash
ass6='/home/cris/Desktop/CS471-Security/Assignment6/outputs'
# 1. HTTP : port 80
(while true; do echo -e "HTTP/1.1 200 OK\n\n $(date)" | nc -l -p 80 -q 1 >> $ass6/nc-http-output.txt; done)&&
# 2. HTTPS : port 443
(while true; do echo -e "HTTPS/1.1 200 OK\n\n $(date)" | nc -l -p 443 -q 1 >> $ass6/nc-https-output.txt; done)&&
# 3. SSH : port 22
(while true; do echo -e "OpenSSH_8.9p1Ubuntu-3ubuntu0.1, OpenSSL 3.0.2 15 Mar 2022" | nc -l -p 22 -q 1 >> $ass6/nc-ssh-output.txt; done)&&
# 4. FTP : port 20
(while true; do echo -e "HTTPS/1.1 200 OK\n\n $(date)" | nc -l -p 443 -q 1 >> $ass6/nc-FTP-output.txt; done)&&
# 5. SMTP : port 25
(while true; do echo -e "HTTPS/1.1 200 OK\n\n $(date)" | nc -l -p 443 -q 1 >> $ass6/nc-SMTP-output.txt; done)


# 1. HTTP: Port 80
(echo "Hello HTTP, from Kali at : $(date)" | nc 192.168.0.49 80) &

# 2. HTTPS : Port 443
(echo "Hello HTTPS, from Kali at : $(date)" | nc 192.168.0.49 443) &

# 3. SSH : Port 22
(echo "Hello SSH, from Kali at : $(date)" | nc 192.168.0.49 22) &

# 4. RDP : Port 3389
(echo "Hello RDP, from Kali at : $(date)" | nc 192.168.0.49 3389) &

# 5. Python Server : Port 2482
(echo "Hello Python Server, from Kali at : $(date)" | nc 192.168.0.49 2482)
# make outputs mine
#(sudo ./mine.sh)
