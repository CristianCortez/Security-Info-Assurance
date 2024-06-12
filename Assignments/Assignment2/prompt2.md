# ASSIGNMENT 2

## ABSTRACT

Work with tric and asymmetric encryption using Kali Linux, gpg, md5sum, and steghide

## ASSIGNMENT

Using Kali linux vm, complete the following:

Provide a single document detailing the activity, including your process, methods, and results. All screenshots should be nicely resized and annotated. Your document should show what you did, how you did it, display the results, and explain what happened.

Include all of the files created during this activity with your submission. Additionally, include all of the commands used during your work in separate text file; this will also be included with your submission.

## ACTIVITY

Create a plaintext file named "`plaintext.txt`" with the following text

    Your name
    NetID
    Some secret message of your choosing.

Use the ***GPG*** application to perform symmetric and asymmetric encryption task.

- Encrypt the plaintext file with symmetric encryption in ASCII armored format.
    Use password: letmein
- Import the provided public key, `csmith.pub.key` int your gpg keyring. This will be used for asymmetric encryption.
- List keys in GPG keyring. This will simply display the keys.
- Create a key pub/pri key pair. **Save yor password!**
- List keys in GPG keyring. This will simply display the keys. There should be new keys now.
- Export your publickey as ASCII armored file name `YOURNETID.public.key`. Include this file.
- Sign the "`plaintext.txt`" with your private key. **DO no share or submit your private key!**
- Encrypt the signed file to ASCII output using provided key. Include this signed file.

Use ***netcat*** to transmit ASCII formatted encrypted text.

- This message must be captured using Wireshark. Inclde a packet capture file with pnly these captured packets. The Netcat listener must save the received data in a file on the receiver. Include this file.

Use ***Steganography tool, Steghide***, to embed your `plaintext.txt` file in a jpeg image of your choosing.

- For this step, you will nee to install Steghide. Include this embedded image file and the original image file in your submission. **You must use the password `letmein` for embedding the image.** Use the same Steganography tool to extract your plaintext from the previos embedding.

Use ***md5*** tools to ge the md5 hash of your original jpeg image and jpeg with an embedded file.

- Compare these checksums. **What does this result mean?**
- Rename the original file and get the md5 sum for the renamed file.
- Compare these checksums. **What does this result mean?**

## CONCLUSION

In addition to your conclusion, add the following:

- Discuss the limitations and use cases for the tools used in the activity. Be specific.
- For each of the tool used, describe how they do or do not provide:
    - authentication
    - access control
    - data confidentiality
    - data integrity
    - non-repudiation

## DELIVERABLES

A document detailing the activity, including your process, methodsand results. This includes annotatied screenshots. Clearly detail your work in a reproducible way following the provide sample format. Do not provide any image or text from another source without citation.

Additionally, submit files created for this assingment. Attach these files to your submission. **Do not zip, tar, archive.** The packet capture files should only include the requested files; these should be faily small files.

Additionally, submit a single text file with all of the commands used for this assingent. One command per line. This should be complete annd *organized in order of use*.

Upload these files to BB/Canvas b4 deadlne.