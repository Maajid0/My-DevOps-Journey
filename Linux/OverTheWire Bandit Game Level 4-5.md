# OverTheWire Bandit - Level 4 to Level 5 Solution 🎮🔐

## The Goal 🎯:
The challenge requires you to move from **Level 4** to **Level 5** by accessing the password for the next level. You’ll need to explore files and use the `man` page to check details about the `file` command. One of the files will contain the password for the next level.

---

## My Solution 💻:

## Step 1: Log into the next level using SSH 🔑
To move to Level 4, connect to the server using SSH. You’ll use the username `bandit4` and the password obtained in the previous level (`4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw`).

```bash
ssh bandit4@bandit.labs.overthewire.org -p 2220
```

You will be prompted for the password. Use the password you retrieved from Level 3:

```bash
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
```

## Step 2: List the files in the directory 📂
Once logged in, use the `ls` command to list the files in the current directory.

```bash
ls
```

This will show a directory called `inhere`.

## Step 3: Navigate to the inhere directory 📂
Change to the inhere directory using the `cd` command.

```bash
cd inhere
```
## Step 4: Check the man page for the `file` command 📖
Use the man command to check the manual for the `file` command. This command helps identify file types, which could be useful for your next steps.

## Step 5: List files in the directory with details using `ls -la` 📑
Use the `ls -la` command to list all files in the inhere directory, including hidden files, with detailed information about permissions and file types.

## Output: 

```bash
total 48
drwxr-xr-x 2 root    root    4096 Sep 19 07:08 .
drwxr-xr-x 3 root    root    4096 Sep 19 07:08 ..
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file00
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file01
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file02
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file03
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file04
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file05
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file06
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file07
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file08
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file09
```

## Step 6: Use the `file` command to check the file types 🔍
You can use the `file` command to check the contents of all the files.

```bash
file ./*
```

This will output: 

```bash
./-file00: data
./-file01: data
./-file02: data
./-file03: data
./-file04: data
./-file05: data
./-file06: data
./-file07: ASCII text
./-file08: data
./-file09: data
```

## Step 7: View the contents of the file with text data 📖
The file -file07 is identified as "ASCII text," which means it contains readable content. Use the `cat` command to view the file and obtain the password.

```bash
cat ./-file07
```
# Output:

```bash
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
```

## Step 8: Exit the session once done 🛑
After retrieving the password for Level 5, log out of the SSH session by typing:

```bash
exit
```

---

## Takeaways 📚:

1. SSH for Secure Access 🔐: As always, SSH is a critical tool for securely accessing remote systems. You’ll continue using it throughout the Bandit game and in real-world system administration tasks.

2. Using the file Command 📑: The file command is incredibly useful for determining file types. It allows you to identify hidden text files or other types of data that may not be immediately obvious from the file extension alone.

3. File Permissions 🔒: The ls -la command reveals important file permissions and ownership. Understanding file permissions is key to working with Linux systems securely and effectively.

By completing this level, you're becoming more adept at using Linux commands to investigate and manipulate files, as well as understanding key system concepts such as file types and permissions. 🚀
