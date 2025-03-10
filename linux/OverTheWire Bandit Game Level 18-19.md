# OverTheWire Bandit - Level 18 to 19 Solution 🎮🔐

## The Goal 🎯:
We need to retrieve the password for **bandit19** by reading the `readme` file located in the **bandit18** directory. Unfortunately, someone has modified `.bashrc` to log you out when you log in with SSH.

## My Solution 💻:

### Step 1: Access Level 18 🔑
First, log into **bandit18** using the password we obtained from the previous level:

```bash
ssh bandit18@bandit.labs.overthewire.org -p 2220
```

## Step 2: Read the `readme` File 📄
When I tried using the password directly, it wouldn't let me log in using SSH. However, I knew the password was contained in a file named `eadme`.

Instead of logging in interactively, I combined the `ssh` command with `cat` to display the contents of the `readme` file directly from the command line. Here's the command I used:

```bash
ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme
```

## Step 3: Retrieve the Password for Level 19 🔐
The contents of the `readme` file returned the password for `bandit19`:

```bash
cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8
```

## Step 4: Access Level 19 🔑
Now that I have the password for `bandit19`, I can log into `bandit19`:

```bash
ssh bandit19@bandit.labs.overthewire.org -p 2220
```

This successfully logs me into bandit19, and I now have access to the next level.

---

## Takeaways 📚:

1. Using `ssh` to Directly Read Files 📝: I was able to retrieve the contents of the `readme` file without logging in interactively by combining `ssh` and `cat`. This is a useful technique when you want to quickly read files on remote servers without logging in manually.

2. Handling SSH Authentication Issues 🔐: Sometimes, authentication may fail if the password is incorrect or if there are issues with your SSH client configuration. In this case, directly accessing the file with the `ssh` command provided an efficient workaround.

By completing this level, you learned how to efficiently retrieve files from a remote server using a combination of `ssh` and other commands. 🚀
