# OverTheWire Bandit - Level 2 to Level 3 Solution 🎮🔐

## The Goal 🎯:
The challenge requires you to move from **Level 2** to **Level 3** by accessing the password for the next level. The password is found in a file, and the file's name contains spaces, which you need to handle carefully. You will need to use the password obtained from Level 1 to log into Level 2.

---

## My Solution 💻:

### Step 1: Log into the next level using SSH 🔑
To move to Level 2, connect to the server using SSH. You’ll use the username `bandit2` and the password obtained in the previous level (`MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx`).

```bash
ssh bandit2@bandit.labs.overthewire.org -p 2220
```

You will be prompted for the password. Use the password you retrieved from Level 1:

```bash
MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx
```

## Step 2: List the files in the directory 📂
Once logged in, use the `ls` command to list the files in the directory and check for any clues or files relevant to the challenge.

```bash
ls
```

This will return the names of the files, one of which will have spaces in its name.

## Step 3: View the contents of the file with spaces in its name 📖
To view the contents of the file, you will need to properly handle the spaces in the filename. Enclose the filename in quotes (either double `"` or single `'` quotes will work).

```bash
cat "spaces in this filename"
```

## Output: 

```bash
MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx
```

Step 4: Exit the session once done 🛑
After retrieving the required information (or password), you can log out of the SSH session by typing:

```bash
exit
```

---

## Takeaways 📚:

1. SSH for Secure Access 🔐: Logging into remote systems via SSH is essential for many system administration and security tasks. In real-world scenarios, SSH is used to securely manage remote machines.

2. Handling Filenames with Spaces 📝: When dealing with filenames that contain spaces, always enclose the filename in quotes. This is a common challenge in shell scripting and file management on Unix-like systems.

3. Working with Files via `cat` 🖥️: The `cat` command is simple yet powerful for reading file contents. It’s commonly used to quickly view small files, configuration files, or passwords in Linux environments.

By completing this level transition, you're further developing your command-line skills, which are vital for both security challenges and real-world system management. 🚀

