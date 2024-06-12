# Notes

## 01/23/2023

nat
nat network
bridge adapater

wireshark:

    select any adapter
    spur traffic to capture packets

ip addr: look up ipaddress

## 02/06/23

review fiestiel model

how many bits in a block of block encryption des

symmetric encryption: work with the same key.

every entity needs to keep the symmetric key safe.

symmetric encryption is not good for rauthentication

man in the middle attack

block traffic

professor and student connection is being intercepted

prof/student enc/dec eachothers messages

## 02/15/23

next week thursday class is not held

instead use lockdown browser to do test

sign and encrypt

    sign: encrypt with private key dec with public key
    encrypt the message to ensure confidentiality
    sign the encrypted text to provide authentication

key exchange vulnerabilite:

1. man in the middle attack

mim: active attack

    blocking comms from a to b
    intercept from a to b

authentication:

    you hold private key
    others confirm with public key

    so, encrypt with private / decrypt with public key

store private key

    use symmetric encryption to store it
    password managers: will need acces to private key
        at that time, it will decrypt it to gain access

passwords about authentication

hydra specifically designed attack authentication

    defeating and by-passing authentication

    username password relation is authentication

private public key pair can be used for authentication

MFA:

    something you know
    something you are
    something you have
    something you do

A and B:

    symmetric encryption

Kerberos:

    key exhange that uses a centralized trusted server to provide encrypted connections for key exchange

    relies on symmetric encryption

## 02/27/23

network access control (auth, access control)

control to access to resources based on a policy for authenticated user

- authenticating another user
- what are they allowed todo
- enforcement mechanism (access control)

authentication: verify genuine user (private key encryption public key decryption, signing, no ideal way).

mitm against key exchange: biggest problem for encryption (authentication)

Health of a system: how secure is the network

not just authenticating users, policy enforcement

    some systems are inherently less secure (more compromised) than others

DHCP: dynamic host config protocol

    grants ip addresses

vlan server: divide enterprise network into logical segments

EAP: framework for authentication

    extensible authentication protocol: plug/unplug different modules

PSK: Pre shared key: symmetric encryption

    no key exchcange, before the key exchange problem

    means username:password

IKE: Internet Key exchange

    public keys sent over a network

authenticatio serves: radius servers, remote access dial in user services

    good place to put EAP

802.1X along with EAP: provides access control

EAPOL:

    how

cloud computing evironment

    the internet: a server on the otherside of an unsecure connection

types of authentication does eap support

digital digests: md5

access control by its self is about authenticated users

last

## 03/01/2023

access control requires:

- authentication
- policy
- enforcement method/mechanism

firewalls are an enforcement mechanism

- application that blocks/allow/ filters network traffic

mac address trival to forge, therefore should not be used for authentication

## 03/06/23

automatic confidentiality:

- automatically encrypt packets before sending
- work for any application so app does not need to modify this network protocol
- transparent to end user

TLS: Transport Level Security

Please Review the TLS handshake. PLEASE PLEASE Review the TLS handshake

4 phases:

1. client hello, server hello
2. server sends

    1. vertificate
    2. server key exchange
    3. certificate request
    4. server hello done

3. user sends

    1. certificate
    2. client key exchange
    3. certificate verify

4. client sends

    1. change cipher spec
    2. finished

    server sends

Heartbeat protocol: part of TLS

keep connections open

checks if server and client can still communicate

    what if send a couple bytes, but request more from server

    should be: send max to what ever was sent

heartbleed: exploiting the heartbeat protocol and make it reveal something more than it should

dont really need to review ssh handshake, mostly TLS

## 03/08/23

secure copy:

    cop files over untrusted entwork
    gives confidentiality

consider all networks are untrusted

key exchange is always the big problem

why don't we just do all key transfers through ssh if its so good at encrypting packets and has key management built in?

    in order to get the keys for ssh connection, key exchange problem

port numbers are universally preconfigured.

root account that does not have a password.

    sudo allows us to run commands as root

goal of RSA:

    public and private parts
    public key is freely distributed without risk

possible some mitm attack

    first key exhcange is the most dangerous one because keyexcahnges only happen once at the start of a new connection

once public key is on remote the host, innoculated against mitm

TLS adds encrypt before decrypt after for applications that dont do that

    http + SSL/TLS = https

ssh port forwarding: mechanism in ssh for tunneling application ports from the client to server or vice versa

- adds encryption to apps that dont

local forwarding: listens for redirects

opening backdoors

    opens additional routes not designed by the router

Imagine a place and a time where the only true software existed on linux and unix systems

## 03/13/23 Tuesday

tls provides confidentiality

tls authentication?

    authentication is really hard

ssh authentication

    public keys and private keys

EAP: Extensive Authentication Protocol

    framework for authentication

802.11i:

    port based network access control

## 03/15/23 Thursday

802.1x and arp:

802.11i

    wifi
    provides all security service categories

    provides asymmetric and symmetric encryption

    gives security

prevent mitm attacks:

    trusted third party sign keys
    but how to get them the key?
        still and issue.

wired vs wireless

    very similar
    wired: closer proximity because you need to physically touch the wire
    wireless: radio connection can be used at a farther distance

nmap:

    GOAL: discover open ports and hosts connected to the network

    open ports
    but more importantly
    what devices are on the network

    it can do both wired and wireless
        it dosent matter the network connection

iptables:

    help to prevent nmap scans
    firewall rules

wireless networks

- encrypt all packets for hosts not authenticated on the network

    listen to the packets from a wireless network means that all them would be encrypted

- how to decrypt packets

    easy way: know the password for the wifi network

    to decrypt, simply login into the network

    if you dont kno it, then bruteforce it

wifi security

- none
- WEP
- WPA/WPA2

Kali and bridged mode is not the same since it does not communicate directly with the wifi card

    try and find an usb wifi device with an external antenna

    new wireless device to config it

    now the vm has direct wireless access

    for wireless scanning: need promiscious access to the device

## 03/20/23 Tuesday

authentication is hard. why?

    proving who you are

    mitm works at attacking authentication by spoofing.

### DNS

maps domain names to ip addresses

authentication: how to ensure that ip address mapping is correct and not sending you to a bad version of it hosted somewhere else

dns cache poisoning

email

MIME without authentication

    we want to add security : S/MIME

dns needs authentication : nightmare without

send some mail message

what parts that are added dns to make DNSSEC

## 03/22/23 Thursday

DNS is a third party service

DNS exploitation

    take stolen data through firewalls

nslookup

ipchicken.com, then ssh in

## 04/03/23 Tuesday

Review day for exam on wednesday

EAP

TLS automagically takes packets and adds enryption to apps that do not have that built in

handshake happens at the start of the connection

    4 way handshake

    define the session with the handshake

firewalls

    review iptable hw


    no need to mem iptables command

dns

    what makes it insecure?
    problem: lying dns server can get away with lying

    dns cache poison

    dnssec: provides authentication
    what services are added?
    only works because we all collectively trust the authentication

mitm: attacks

## 04/10/23 Tuesday

VPN : Virtual Private Network

    Everything between ur computer and the VPN service is encrypted

    think about firewall rule : outbound traffic is sent through encrypted tunnel

    What does VPN afford me....

        IP Level masking but not Transport Protection

    VPNs might not work..

    How does a VPN work?

IPSEC vs TLS creates a tunnel

    Commit to memory

    Both VPNs, work in the Networking heirachy differently

TLS adds at the Transport Level
IPSEC add at the IP Level

    Benfits

        Confidentilaity

        Obscure the origianl location of sender
    
    If we leave the tunnel, then we lose these advantages

IPSEC works very much like a Firewall

- components of it are a Firewall
- helps combat replay attacks

Transport-Mode vs Tunnel-Mode

Big take away
VPN
FIrewall
Authentication
Confidentiality

Gloss over

    IKE
    Keys

Next Time

- BOTNETS
- BEEE: Browser Explotation Framework

## 04/12/23 Thursday

Network of hijacked systems

Malware infected computers

remote access trojans that have an obfuscated IP hard coded in it

DDoS : attack based on overloading a server with web traffic to crash it

Phishing schemes imitate trusted people to deliver malicious payloads

brute force attacks run programs designed to breach web accounts by force.

Hooking a bot:

    bot is part of bot net

    The act of compromising a system to turn it into a bot is called "hooking"

    requires : simply loading a webpage with a small JS script

    How to get user to load a webpage of choice

        Proxy, DNS, Firewall??..

How to prevent?

BeEF : Browser Exploitation Framework Project

focuses on:

- leveraging browser vulnerabilities to assess the security posture of a target

abstraction

AD delivery is common for introducing malware

Control Panel for BeEF

## 04/17/23 Monday

TLS

IDS

Malicious software

    What is it?

    Software designed to do something bad

    Software designed to break a security service

Stealing passwords

    direct attack on authentication
    indirectly attack on confidentiality

Confidentiality

    attack: eavesdropping on a connection

    even easier : keylogger

        catch end users off guard with watching their keystrokes

motivations:

    hateware: software specifically designed to hurt someone

Goals:

    getting information

Supply chain attacks: attack some service used by multiple services

Solarwinds attack : apt - advanced persistant threat

What to do about it?

It will remain

- steallthy
- continue to access higher privlidges

Honeypot

system with no production value

zero day vulnerabilities:

1. hackerman sells exploits to ppl

    good guys follow channels until they find it

2. hackerman whitehatted sells/tells the vulnerability to the service provider


HW due date pushed to friday night

    see a good analysis

## 04/24/23 Monday

## 05/01/23 Monday

Firewalls provide:

- access control
- confidentiality?

    IPSec, like a VPN, is that used in firewalls?

firewalls control the flow of network traffic, can block attackers and bad traffic, why not block traffic?

how can firewall provide authentication? IP or MAC Address, yet these are easily falsified

How is firewall used to improve security?

perimeter model is boken because we cannot provide a single choke point. Perimeter control is inherently flawed

Multi network

## 05/03/23 Wednesday

Final:

- Wednesday may 10th

Topics:

Not need to go back to things too old

- IPSec

    typically deployed at firewall

- malware

    botnets:
        components
        how do they attack? :ddos

    browser exploitation framework

- IDS

    honeypots: system that has no production value

- Firewalls

    kno more about the three firewalls
    NAT : ip address sharing
    IPSEC : ip level
    DMZ : different stragety for firewall

        different rules than the typical access control

    iptables firewall

- Tunnels

    VPN, Tor Onion Router
- MiTM : same question about the mitm.

leet speak

why is tor risky:

    tor is dangerous
    
    tor nodes
        are they spying on you?
        could they have DNS poisioning?
    
    tor: unmask peoples privacy
