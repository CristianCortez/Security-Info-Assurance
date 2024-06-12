#!/bin/bash
#ass6=`home/kali/Desktop/asignment6`
# connect to Ubuntu
#
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


# 4. FTP : Port 20
#(echo "Hello FTP, from Kali at : $(date)" | nc 192.168.0.49 20)&&

# 5. SMTP : Port 25
#(echo "Hello SMTP, from Kali at : $(date)" | nc 192.168.0.49 25)
