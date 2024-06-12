## Cristian Cortez
## ID: if2482
## CS 471: Security & Info Assurance
# Assignment 7

## **Abstract**

In this assignment, we use Tails OS to run a Tor Browser that is connected to a Tor network. The prupose of this assignment is to understand how Tails OS and Tor provide a user with Data Confidentiality through data encryption. Tails OS is run through a VM without persistant storage. Tor Browser is used to generate traffic. "Tcpdump" is used to capture packets while Wireshark is used for analysis. Packet analysis shows how a user is anonymous during data transmission as well as hidden packet content that provides privacy.

## **Introduction**

A Tails system will be used to connect to the Tor Network via a Tor browser session. Tcpdump will be used to capture packets. Wireshark will be used to analyze packets after capture. An encrypted text file will be created and shared via OnionShare as well as donloaded and decrypted.

Commands used:

### NIX GENERAL

    // create a text file with a message.
    echo "All work and no play makes Cristian a dull boy." >> Desktop/secrets.txt

    // copy the file to the Tor Browser directory
    cp Desktop/secrets.txt.gpg 'Tor Browser'

    //change permissions on pcap file
    sudo chown amnesia:amnesia Desktop/packets.pcap

    // copy the pcap file to the Tor Browser for cloud upload
    cp Desktop/packets.pcap 'Tor Browser'

### GPG

    // encrypt with symmetric encryption.
    gpg --symmetric Desktop/secrets.txt

### TCPDUMP

    // start packet capture with tcpdump
    sudo tcpdump -i any -s 65535 -w Desktop/packets.pcap

### WIRESHARK : FILTERS

    // filter the packets for only those that contain tcp
    tcp

    // filter packets with ip address loopback
    ip.addr == 127.0.0.1

## **Summary of Results**

<!-- <img src="images/a1.JPG" width="625" height="440"> -->

### **A: Create Tails OS in a Virtual Box**

***1. Download the Tail iso***

Download the [Tails OS iso here](https://tails.boum.org/install/vm/index.en.html)

<img src="images/a1-1.JPG" width="525" height="240">

***2. Create a Virtual Box***

Create a Virtual Box named "Tails OS" with no hard drive. Add the iso image as a new optical drive in Virtual Box.

Go to:

    Tails OS -> Settings -> Storage -> Controller SATA -> "Add Optical Drive" -> select Tails iso

Next, select "Live CD/DVD".

<img src="images/a2-1.JPG" width="625" height="440">

***3. Run Tails for the First Time***

Run the newly created VM.

Be sure to set the sudo password to "letmein". This is very important.

Go to:

    Welcome to Tails! -> Additional Settings -> Admin Password -> "letmein" -> Add

Then go ahead and start Tails!

### ***B: Pre-packet Capture: Tor Connect and Plaintext File Encryption***

***1. Tor Connection***

After starting Tails, a new window will ask to set up a Tor Connection. 

Select:

    "Connect to Tor Automatically"

Do not Configure a Tor bridge.

<img src="images/b1-1.JPG" width="625" height="440">

Then select:

    "Connect to Tor"

This process will take a few seconds.

NOTE: this option maybe hidden behind the VM window. Increase the size of the VM window and youll see it.

Do not start the browser yet.

***2. Plaintext file ecnryption***

We will need an encrypted file to upload to the *Onionshare* service. We will use "gpg" command tool to symmetrically encrypt the file. Ensure to use the password "letmein"; this is important.

Use commands:

    // create a text file with a message.
    echo "All work and no play makes Cristian a dull boy." >> Desktop/secrets.txt

    // encrypt with symmetric encryption.
    gpg --symmetric Desktop/secrets.txt

    // copy the file to the Tor Browser directory
    cp Desktop/secrets.txt.gpg 'Tor Browser'

<img src="images/b2-1.JPG" width="625" height="440">

Once created, this encrypted file will need to be copied to the 'Tor Browser' folder. Tor browser only has permission to access this folder an no other.

<img src="images/b2-2.JPG" width="625" height="440">

### ***C: Pack Capture: Tor Browser, DuckDuckGo, Onion Address, Unsafe Browser, Onion Share***

***1. Start Packet Capture***

In this assignment, we will use the "tcpdump" command instead of Wireshark to conduct the packet capture.

Ensure to save the file with a Wireshark compatiable extension i.e. ".pcacp"

Use Commands:

    // start packet capture
    sudo tcpdump -i any -s 65535 -w Desktop/packets.pcap

<img src="images/c1-1.JPG" width="625" height="440">

Then start the Tor Browser from the still open "Tor Connection" window.

***2. Check Tor Browser Configuration***

To check if the Tor Browser is correctly configured, navigate to

[https://check.torproject.org/](https://check.torproject.org/)

This will check the browser config.

<img src="images/c2-1.JPG" width="625" height="440">

***3. Tor Browser, DuckDuckGo, Unsafe Browser***

From the Tor browser, do some basic web searches. For example, search duckduckgo for "cheese".

<img src="images/c3-1.JPG" width="625" height="440">

Now start the unsafe browser. Do this by searching for it:

    super key -> "unsafe"

<img src="images/c3-2.JPG" width="625" height="440">

Notice, if we enter "[cheese.com](cheese.com)" in both browsers, the unsafe browser contains an ad banner at the top of the page. No such banner exists in the Tor Browser.

<img src="images/c3-3.JPG" width="625" height="440">

Try this with another site. I tried "[facebook.com](facebook.com)". This resulted in Tor issuing a popup window asking my about cookies for facebook.com, whereas the unsafe browser sent me straight to login.

<img src="images/c3-4.JPG" width="625" height="440">

Now, let share the encrypted file over the "OnionShare" service.

    super key -> "share"

<img src="images/c3-5.JPG" width="625" height="440">

Within the OnionShare client, navigate to the 'Tor Browser' folder and select the encrypted text file to share. Begin the share.

<img src="images/c3-6.JPG" width="625" height="440">

This will generate a link. Copy this link and use it to access the OnionShare service from the Tor Browser.

<!-- <img src="images/c3-7.JPG" width="625" height="440"> -->

<img src="images/c3-8.JPG" width="625" height="440">

Inside the Share service, download the encrypted file. We will decrypt it later.

<img src="images/c3-9.JPG" width="625" height="440">

Stop the packet capture. You will need to change perimssions on the pcap file.

You will also need a way to copy it from Tails OS. I did this through google drive. When using an online service, ensure the file is located within the 'Tor Browser' folder so that web browser is able to access it.

Use Commands:

    //change permissions on pcap file
    sudo chown amnesia:amnesia Desktop/packets.pcap

    // copy the pcap file to the Tor Browser for cloud upload
    cp Desktop/packets.pcap 'Tor Browser'

<img src="images/c3-11.JPG" width="625" height="440">


### ***D: Decryption***

Within the 'Tor Browser' folder, locate the downloaded encrypted text file shared with OnionShare. Double click it to decrypt it.

<img src="images/c3-13.JPG" width="625" height="440">

Enter in the password to view the message.

<img src="images/c3-14.JPG" width="625" height="440">

## **Analysis**

### **Packets**

Analysis for this assignment is conducted on the numerous packets that were captured when using the Tor Browser, the unsafe browser and OnionShare.

The first step would be to filter the packets for the IP address of our machine. Expectedly, this resulted in zero packets.

<img src="images/analysis-1.JPG" width="625" height="640">

This was expected. The IP address in the above screenshot is a "fake" address generated by the Tor network. This address is actually a pseudonym for the loopback address. Loopback addresses are used to provide intercommunicatons between the Tor client and the Tor proxy running on the same computer.

<img src="images/analysis-2.JPG" width="625" height="440">

### **Tor Relays**

Loopback addresses are also used during the tranmission on the Tor relay. When a Tor browser connects to the Tor network, a three layered relay is provided for communications. The components of the relay are:

1. Entry Node
2. Middle Node
3. Exit Node

Encryption is used to hide the ip addresses of every node in the relay. When packets are recieved by a node, each node must decrypt the address and encrypt the address before transmission (except in the Exit node that keeps the destination IP decrypted). This creates a large overhead on the Tor relays that are not present in normal web browsing.

This is something I noticed; the Tor browser was somewhat slower than normal web browsing. Factors that produce slower speeds with Tor than web rbowsing include:

- large encryption layers
- multiple hops in the relay
- unequal computational power amongst nodes
- geographical location of nodes

Exit nodes are those that have the direct connection with the service requested by the tranmission. For example, "[cheese.com](cheese.com)" would only have the IP address of the exit node and not of the other nodes in the relay nor the user computer. In this way, relays are the "layers" of the Onion Router and encryption provides the privacy.

### **Packet Expectations**

Packet analysis could show some information about the traffic but would not explicitly show contents or identity. Kinds of information include:

1. IP addresses of exit node:

    Ip addresses are encrypted during the Tor relay. However, they are decrypted for the destination IP, leaving the exit node (last node in the relay) exposed to the requested service.

2. Protocol Information:

    The kinds of protocols within the packets are not encrypted. For example, we can see the majority of the packets collected are for the TCP protocol.

3. Traffic Patterns, Size and Timing:

    We can infer services based on the way traffic was recieved. For example, if Tor networks are used to provide a DDOS attack, we could infer that from the way packets are sized (like a maximum size to eat bandwidth) and there timings (alot of various packets spaced far enough apart to go undected.)

### **Tails's Unsafe Browser**

The unsafe browser is a Tails OS built-in web browser that does not connect to a Tor Network to provide privacy through Onion Routing. Instead, the Unsafe Browser uses a regular standard connection between a client and a server. This browser is considered "unsafe" because it does not use the Tor network. This is helpful because a website might not be compatiable with Tor, so this would allow a user to visit such sites. However, these connections are not private so are subject to potential spying by ISPs, Admins, attackers, etc.

First thing to note about the Unsafe Browser is that there is no search engine. Websites must be entered in manually (DNS). I think the reason for this is to provide some level privacy without using the Tor network. Search engines tend to collect data on activity for any number of possible reasons. Someone who has gone the effort to use Tails OS, who is then forced to use Unsafe Browser would still like to get some privacy, otherwise whats the point.

### **Tails OS Permant Storage**

Privacy is the main concern for Tails and Tor users. These services are meant to provide privacy even at the cost of typical user experiences, such as persistant storage. In this way, permamnt storage is seen as inherently un-private. Cold storage of data is typically always at risk of undisclosed access, especially if it sits unencrypted. Removing persistant storage as a base feature in Tails means that Tails leaves no trace on the computer that runs it. Especailly since Tails is designed to be run off a live USB drive.

## **Conclusion**

In this assignment, we used Tails OS to browse the web through the Tor Browser connected to the Tor network. Tails Os was installed in VM without persistant storage. "tcpdump" was used to capture traffic during the Tor browser session. Wireshark was used to analyze the packets.

Packet analysis of the traffic generated by the Tor browser reavealed very little about the kinds of content that was being transmitted as well as how IP addresses are hidden across the relay nodes. It showed how Tor connections rely on loopback addresses within Tor relay nodes to communicate between the clients and proxies. Overall, traffic generateed with Tor is hard to analyze. It would require extensive research and probing to determine what kinds of content is being transmitted across a Tor network.

Tor with Tails is better and Tor without Tails. Firsdtly, Tails provides a preconfigured Tor browser that needs no tinkering to provide full privacy. Tails also ships with various Tor clients including Onionshare. More so, Tails has many built in privacy gurads that work with Tor to provide the user confidentiality such as non-persistant storage.

Before describing how each tool used in this assignment provides or does not provide the X.800 Secuirty Services, lets take a brief moment to define them.

1. *Authentication*: ensures that all parties involved in a data access or connection are who they say they are.
2. *Access Control*: the ability to limit and control access to system resouces through secuirty policies and mechanisms.
3. *Data Confidentiality*: prevents unauthorized data acess.
4. *Data-Integrity*: provides assurance that total data streams remain unchanged by unauthorized entities.
5. *Non-repuditation*: protects against denial of involvement within a connection.

### ***TAILS OS : Access Control, Data Confidentiality***

Tails OS provides a user with tight privacy and anonymity through encryption and non-persistant storage. In this way, Tails provides the security services of Access Control and Data Confidentilaity.

Tails provides ***Access Control*** through the use of firewalls. While this is not the tightest of access control, firewalls do serve as a network filter which can protect against data access. I would also say that Tails built-in non-persistant storage is a form access control in that data that is not stored has no potential for illegal access.

Tails provides ***Data Confidentiality*** through the use of a heavy encryption layer of all traffic generated with a Tor browser. Tails also provides an "unsafe browser" that does not have a built in search engine, which would otherwise collect data on a users searches.

### ***TOR ONION BROWSER : Access Control, Data Confidentiality***

Tor Browser provides a user with a large encryption layer over traffic. Tor Browser also uses a Tor relay generated from a Tor network that provides the user several layers of separation from them and the service they are requesting from. Tor browser uses various loopback address of the various nodes on the relay to communicate between clients and proxies. In this way, Tor provides Data Confidentiality as well as Access Control.

Tor Provides ***Access Control*** through the use of proxies that can be configured to connect to the next node in the relay. As we saw in our packet analysis, a proxy was using the loopback address to communicate with the entry node of the relay.

Tor provides ***Data Confidentaility*** through the use of an encryption layer that is provided by the Tor network. At each stage of the relay, IP addresses are decrypted and encrypted to ensure that nodes can only talk with each other and not with the start or end points. In this way, a user is anonymous during the transmission.


