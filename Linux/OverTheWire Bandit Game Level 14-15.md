# OverTheWire Bandit - Level 14 to 15 Solution 🎮🔐

## The Goal 🎯:
We need to retrieve the password for **bandit15** by connecting to a service on **localhost** and providing the correct password for **bandit14**.

---

## My Solution 💻:

### Step 1: Access Level 14 with the SSH Private Key 🔑
First, we log into **bandit14** using the private SSH key (`sshkey.private`) as shown in the previous level.

```bash
ssh -i sshkey.private bandit14@localhost -p 2220
```

## Step 2: Find the Password for Level 14 🔍
Once logged into `bandit14`, we learn from the previous hint that the password for the next level (`bandit15`) is stored in a file at `/etc/bandit_pass/bandit14`.

We use `cat` to display the content of this file and find the password for `bandit14`.

```bash
cat /etc/bandit_pass/bandit14
```

## Output: 

```bash
MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS
```

## Step 3: Connect to localhost via Netcat (nc) 🖥️
Now that we have the password for `bandit14`, we use the `nc` (netcat) command to connect to a service running on localhost at port `30000`.

```bash
nc localhost 30000
```

Once connected, the program will prompt us for the `bandit14` password, which we enter:

```bash
MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS
```

## Step 4: Receive the Password for Level 15 🔐
After entering the correct password, the service returns the password for `bandit15`:

```bash
8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo
```

We now have the password for `bandit15` and can proceed to the next level.

---

## Takeaways 📚:

1. Using `nc` for Network Connections 🌐: The `nc` (netcat) command is a versatile tool that can be used for network connections. In this level, we used it to connect to a service on `localhost` and interact with it to retrieve a password.

2. Retrieving Passwords from System Files 🗃️: We accessed `/etc/bandit_pass/bandit14` to retrieve the password for the next level, demonstrating the importance of knowing system file paths in security challenges.

3. Authentication and Service Interaction 🔑: The password from the file was used for authentication when connecting to a service on port 30000, which shows how different methods (files, netcat, etc.) are used to progress in CTF-style challenges.

By completing this level, you learned how to interact with local services and retrieve sensitive information hidden in system files. 🚀
