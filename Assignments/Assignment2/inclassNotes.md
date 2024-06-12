# Inclass notes on assignment

steghide: install into kali

    $ sudo apt-get update
    $ sudo apt-get install steghide

steghide uses *stegongraphy*: science, hiding in plainsight

for exmaple:

    image file
    compressed
    message is hidden within the encryption

uses steghide to encrypt and store plaintext into a file

    $ steghide embed -cf image.jpg -ef plaintext.txt -sf steg_image.jpg

    - Enter passphase

enter a passphrase that will be used later decrypt

check file size for ste_image: it hould be bigger than original\
md5 check file integrity

    $ md5sum image.jpeg

hash is no reversable. encryption can be decryption

extract

    $ steghide extract -sf steg_image.jpg
    - enter passphrase:

gpg (Gnu Provacy Guard) open pgp encryption and signing tool

    $ gpg --symmetric plaintext.txt

RECALL: encryption takes the plaintext, 1s0s, changes them and the resulting binary is sent throgh unicode and produces junk characters from ascii table

ASCII armored

    $ gpg --symmetric -a plaintext.txt

send files indivdually, not within archive
