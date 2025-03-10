# OverTheWire Bandit - Level 16 to 17 Solution 🎮🔐

## The Goal 🎯:
We need to find and retrieve the password for **bandit17**, using **nmap** to discover open ports and then accessing the SSL/TLS service to retrieve the password.

## My Solution 💻:

### Step 1: Access Level 16 🔑
First, we log into **bandit16** via SSH:

```bash
ssh bandit16@bandit.labs.overthewire.org -p 2220
```

## Step 2: Scan for Open Ports Using `nmap` 🔎
We need to find open ports between `31000` and `32000` on `localhost`. To do this, we use `nmap` with the `-p` option to specify the port range:

```bash
nmap localhost -p 31000-32000
```

The output will list the open ports, like this:

```bash
Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-12-22 18:38 UTC
Nmap scan report for localhost (127.0.0.1)
Host is up (0.00032s latency).
Not shown: 996 closed tcp ports (conn-refused)
PORT      STATE SERVICE
31046/tcp open  unknown
31518/tcp open  unknown
31691/tcp open  unknown
31790/tcp open  unknown
31960/tcp open  unknown
```

We found several open ports between `31000` and `32000`, including ports `31518`, `31790`, and others.

## Step 3: Use `openssl s_client` to Test SSL Connections 🔒
Next, we try connecting to the open ports to find the one that returns the password. First, we test port `31790` using `openssl s_client`:

```bash
openssl s_client -connect localhost:31790
```

This command connects to the service at port `31790` over SSL/TLS. However, this didn't directly return the password, so we tried another method.

## Step 4: Use `ncat --ssl` to Connect Over SSL 🌐
Since `openssl s_client` didn't work as expected, we switched to using `ncat` with SSL support:

```bash
ncat --ssl localhost 31790
```

This command successfully connected over SSL and prompted us for the current password for `bandit16`. After entering the correct password, we received the password for `bandit17`:

```bash
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx
Correct!
-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEAvmOkuifmMg6HL2YPIOjon6iWfbp7c3jx34YkYWqUH57SUdyJ
imZzeyGC0gtZPGujUSxiJSWI/oTqexh+cAMTSMlOJf7+BrJObArnxd9Y7YT2bRPQ
Ja6Lzb558YW3FZl87ORiO+rW4LCDCNd2lUvLE/GL2GWyuKN0K5iCd5TbtJzEkQTu
DSt2mcNn4rhAL+JFr56o4T6z8WWAW18BR6yGrMq7Q/kALHYW3OekePQAzL0VUYbW
JGTi65CxbCnzc/w4+mqQyvmzpWtMAzJTzAzQxNbkR2MBGySxDLrjg0LWN6sK7wNX
x0YVztz/zbIkPjfkU1jHS+9EbVNj+D1XFOJuaQIDAQABAoIBABagpxpM1aoLWfvD
KHcj10nqcoBc4oE11aFYQwik7xfW+24pRNuDE6SFthOar69jp5RlLwD1NhPx3iBl
J9nOM8OJ0VToum43UOS8YxF8WwhXriYGnc1sskbwpXOUDc9uX4+UESzH22P29ovd
d8WErY0gPxun8pbJLmxkAtWNhpMvfe0050vk9TL5wqbu9AlbssgTcCXkMQnPw9nC
YNN6DDP2lbcBrvgT9YCNL6C+ZKufD52yOQ9qOkwFTEQpjtF4uNtJom+asvlpmS8A
vLY9r60wYSvmZhNqBUrj7lyCtXMIu1kkd4w7F77k+DjHoAXyxcUp1DGL51sOmama
+TOWWgECgYEA8JtPxP0GRJ+IQkX262jM3dEIkza8ky5moIwUqYdsx0NxHgRRhORT
8c8hAuRBb2G82so8vUHk/fur85OEfc9TncnCY2crpoqsghifKLxrLgtT+qDpfZnx
SatLdt8GfQ85yA7hnWWJ2MxF3NaeSDm75Lsm+tBbAiyc9P2jGRNtMSkCgYEAypHd
HCctNi/FwjulhttFx/rHYKhLidZDFYeiE/v45bN4yFm8x7R/b0iE7KaszX+Exdvt
SghaTdcG0Knyw1bpJVyusavPzpaJMjdJ6tcFhVAbAjm7enCIvGCSx+X3l5SiWg0A
R57hJglezIiVjv3aGwHwvlZvtszK6zV6oXFAu0ECgYAbjo46T4hyP5tJi93V5HDi
Ttiek7xRVxUl+iU7rWkGAXFpMLFteQEsRr7PJ/lemmEY5eTDAFMLy9FL2m9oQWCg
R8VdwSk8r9FGLS+9aKcV5PI/WEKlwgXinB3OhYimtiG2Cg5JCqIZFHxD6MjEGOiu
L8ktHMPvodBwNsSBULpG0QKBgBAplTfC1HOnWiMGOU3KPwYWt0O6CdTkmJOmL8Ni
blh9elyZ9FsGxsgtRBXRsqXuz7wtsQAgLHxbdLq/ZJQ7YfzOKU4ZxEnabvXnvWkU
YOdjHdSOoKvDQNWu6ucyLRAWFuISeXw9a/9p7ftpxm0TSgyvmfLF2MIAEwyzRqaM
77pBAoGAMmjmIJdjp+Ez8duyn3ieo36yrttF5NSsJLAbxFpdlc1gvtGCWW+9Cq0b
dxviW8+TFVEBl1O4f7HVm6EpTscdDxU+bCXWkfjuRb7Dy9GOtt9JPsX8MBTakzh3
vBgsyi/sN3RqRBcGU40fOoZyfAMT8s1m/uYv52O6IgeuZ/ujbjY=
-----END RSA PRIVATE KEY-----
```

## Step 5: Access the Private Key and Prepare for Level 17 🔑
The output also included an `SSH private key`. To access `bandit17`, we need to save this private key and use it for SSH authentication.

1. First, I created a file to store the private key using `vim`:

```bash
vim sshkey16.private
```

2. I copied the private key into this file and saved it.

3. To make the private key secure, I changed its permissions to read-only:

```bash
chmod 400 sshkey16.private
```

## Step 6: Log into Level 17 Using the Private Key 🔐
Now that I have the private key, I used it to log into `bandit17` via SSH:

```bash
ssh -i sshkey16.private bandit17@bandit.labs.overthewire.org -p 2220
```

This successfully logged me into bandit17, and I was able to retrieve the password for the next level.

---

## Takeaways 📚:

1. Port Scanning with `nmap` 🔎: In this level, we used `nmap` to identify open ports on a target system, specifically between `31000` and `32000`. Understanding how to scan for open ports is a critical skill for network and system administration.

2. Connecting Over SSL/TLS 🔒: We learned how to use both `openssl s_client` and `ncat --ssl` to connect securely over SSL/TLS. While `openssl s_client` is commonly used for troubleshooting SSL/TLS services, `ncat --ssl` was the tool that ultimately allowed us to retrieve the password.

3. Handling Private Keys for SSH Access 🔑: The level also involved using an RSA private key to access the next level. Proper handling of private keys is essential for secure SSH access. We stored the key in a file, set the correct permissions, and used it to authenticate with bandit17.

By completing this level, you gained experience in network scanning, working with SSL/TLS, and using SSH with private keys for secure authentication. 🚀
