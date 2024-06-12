# DEMO

\#Create a file

    $ echo "My name is Chris. This is my secret message.. " >> plaintext.txt

\#Change Permissions on this file

    $ chmod 600 plaintext.txt

\# Symmetric encryption with binary output

    $ gpg --symmetric plaintext.txt
    $ mv plaintext.txt.gpg ciphefiletext.txt.gpg
    $ cat ciphertext.txt.gpg

\# Symmetric encryption with ascii output

    $ gpg --symmetric -a plaintext.txt
    $ mv plaintext.txt.asc ciphertext.txt.asc
    $ cat ciphertext.txt.asc

\# Setup some prearranged listener

    nc -l -p 31337 -q 1 > ciphertext.txt.asc < /dev/null

\# When the file is received, view it

    $ cat ciphertext.txt.asc

\# our ASCII armored, encrypted file to some prearranged listener

    $ cat ciphertext.txt.asc | netcat 192.168.86.220 31337

\# Decrypt the asymmetric message

    $ gpg --decrypt ciphertext.txt.asc

\# Import asymmetric public key

    $ gpg --import csmith.pub.key

\# List the imported keys in local keyring

    $ gpg --list-keys

\# Create a public/private key pair

    $ gpg --gen-key
    $ gpg --list-keys

\# Export the public key in ASCII format (**Share this key**)

    $ gpg --export -a > public.key

\# Sign the plaintext file with your private key

    $ gpg -a --output plaintext.txt.asc.sig --sign plaintext.txt

\# Encrypt the signed file to the recipient's key

    $gpg -e -a -u "You" -r "Christopher" plaintext.txt.asc.sig

\# Install stego tools

    $ sudo apt-get install steghide
    $ man steghide
    $ steghide

\# Donload an image file (**get your own file!!**)

    $ wget https://i/imgur.com/Fkljv4i.jpeg && cp Fkljv4i.jpeg image.jpg

\# Embed a plaintext message in an image file

    $ steghide embed -cf image.jpg -ef plaintext.txt -sf steg_image.jpg

\# check integrity

    $ md5sum image.jpg
    $ md5sum Fkljv4i.jpeg
    $ md5sum steg_image.jpg

\# Extract your secrets

    $ steghide extract -sf steg_image.jpg

\# Garbage

    $ sudo adduser tmpuser
    $ sudo adduser tmpuser sudo
    $ su tmpuser
    $ sudo delsuer tmpuser

\# root prompt using sudo : aka interactive

    $ sudo -i
