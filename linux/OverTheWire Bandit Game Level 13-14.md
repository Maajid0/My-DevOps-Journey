# OverTheWire Bandit - Level 13 to 14 Solution 🎮🔐

## The Goal 🎯:
We need to log into **bandit14** using a private SSH key file (`sshkey.private`). This is the only method of authentication available to us to move on to the next level.

## My Solution 💻:

### Step 1: Connect to the remote server 🌐
We start by connecting to the OverTheWire Bandit server as `bandit13` using SSH.

```bash
ssh bandit13@bandit.labs.overthewire.org -p 2220
```

Once logged in, we are given access to the directory contents for bandit13.

## Step 2: List the directory contents 📂
We use `ls` to list the contents of the current directory.

```bash
ls
```

This reveals that there is a file called `sshkey.private` in the directory.

## Step 3: Read the tip to understand the task 🧑‍💻
The hint for this level mentions that we need to use this private key file to SSH into `bandit14` on the local host. This means we need to use the private key to log into the next level on the same system, but as `bandit14` instead of `bandit13`.

Step 4: Log into the next level using the private key 🔑
We use the `ssh -i` option with the private key file (`sshkey.private`) to authenticate as the `bandit14` user on `localhost` (the same machine).

```bash
ssh -i sshkey.private bandit14@localhost -p 2220
```

This command uses the private key sshkey.private to log into the `bandit14` account on `localhost` via port `2220`.

## Step 5: Successful login 🎉
Once the command executes successfully, you are logged into `bandit14`, and you will be able to proceed with the next level.

---

## Takeaways 📚:

1. SSH Key Authentication 🔑: This level demonstrated the use of SSH private key authentication. By using the `-i` option with SSH, we can securely authenticate ourselves without needing a password.

2. Navigating Between Levels 🧑‍💻: The task emphasised how critical it is to pay attention to hints that suggest different methods of authentication or access, such as using a private key file instead of a typical password.

3. Using Localhost for SSH 🌍: Logging into `localhost` is common when you need to access a system from within itself. This is useful when transitioning from one user to another on the same machine.

By completing this level, you have learned how to use SSH key-based authentication and how to interact with local hosts for multi-step challenges. 🚀
