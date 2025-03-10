# OverTheWire Bandit - Level 15 to 16 Solution 🎮🔐

## The Goal 🎯:
We need to connect to an SSL/TLS service using `openssl s_client` and retrieve the password for **bandit16**.

---

## My Solution 💻:

### Step 1: Access Level 15 🔑
First, we log into **bandit15** via SSH:

```bash
ssh bandit15@bandit.labs.overthewire.org -p 2220
```

## Step 2: Use `openssl s_client` to Connect to the SSL/TLS Service 🔒
To retrieve the password for `bandit16`, we need to connect to an SSL/TLS service running on localhost at port 30001. The `openssl s_client` command is used to interact with SSL/TLS services. The command syntax is:

```bash
openssl s_client -connect localhost:30001
```

Once executed, the connection to the service is established, and the output will look something like this:

```bash
CONNECTED(00000003)
Can't use SSL_get_servername
depth=0 CN = SnakeOil
verify error:num=18:self-signed certificate
verify return:1
depth=0 CN = SnakeOil
verify return:1
---
Certificate chain
 0 s:CN = SnakeOil
   i:CN = SnakeOil
   a:PKEY: rsaEncryption, 4096 (bit); sigalg: RSA-SHA256
   v:NotBefore: Jun 10 03:59:50 2024 GMT; NotAfter: Jun  8 03:59:50 2034 GMT
---
...
```

## Step 3: Enter the Current Password When Prompted 🛠️
After connecting, the service will prompt for the password for `bandit15`. We enter the password:

```bash
8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo
```

## Step 4: Retrieve the Password for Level 16 🔑
After entering the correct password, the service will return the password for `bandit16`:

```bash
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx
```

We now have the password for `bandit16` and can proceed to the next level.

---

## Takeaways 📚:

1. Using `openssl s_client` for SSL/TLS Connections 🔒: The `openssl s_client` command is a powerful tool for connecting to SSL/TLS services and inspecting certificates. This challenge demonstrated how to use it to interact with an encrypted service and retrieve sensitive information.

2. Handling SSL/TLS Certificates 💡: In this level, we saw an SSL/TLS service using a self-signed certificate. We can connect to such services despite the certificate not being verified by a trusted authority (this was indicated by the `verify error:num=18:self-signed certificate` message).

3. Password Retrieval via Secure Channels 🔑: The password for the next level was retrieved after interacting with an SSL/TLS-secured service, showing the importance of using secure channels for sensitive data retrieval.

By completing this level, you learned how to securely interact with encrypted services using `openssl s_client` and how to handle SSL/TLS certificates in the process. 🚀
