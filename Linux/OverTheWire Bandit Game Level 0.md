# OverTheWire Bandit Game - Level 0 Solution

---

## The Goal:
The challenge asks you to access the password for the next level, which is stored in a file named `readme` on the remote server. You are provided with login credentials for the `bandit0` user.

---

## My Solution:
### Step 1: Connect to the remote server
We use SSH to connect to the OverTheWire Bandit server. The provided username is `bandit0` and the port is `2220`.

```bash
ssh bandit0@bandit.labs.overthewire.org -p 2220

You will be prompted for a password. The password for bandit0 can be found on the OverTheWire website or in the challenge description.

Step 2: List the files in the directory
Once logged in, the first thing you want to do is list the files in the current directory to find the readme file.

ls

This will output:

readme

Step 3: View the contents of the readme file
Now, use the cat command to display the contents of the readme file, which contains the password for the next level.
cat readme

Output:

Congratulations on your first steps into the bandit game!!
Please make sure you have read the rules at https://overthewire.org/rules/
If you are following a course, workshop, walkthrough or other educational activity,
please inform the instructor about the rules as well and encourage them to
contribute to the OverTheWire community so we can keep these games free!
The password you are looking for is: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If

Step 4: Note the password for the next level
The password for the next level is: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If

You will need to use this password to log in to the next level (bandit1).

## Takeaways:

Using ssh for remote access: In the real world, ssh (Secure Shell) is commonly used to connect to remote servers securely. It’s vital for DevOps engineers, system administrators, and developers to be comfortable with using ssh for managing remote systems.
Navigating files with ls and cat: Understanding basic commands like ls (to list files) and cat (to display the content of a file) is essential for working with files in Linux-based systems. These commands are useful for troubleshooting, exploring system directories, and retrieving configuration files or logs.
Basic Linux file operations: This challenge is a reminder of how simple commands are essential for interacting with files on a Unix-like system. Whether for system administration, automation, or development, knowing how to efficiently use these commands is a core skill for anyone working with Linux-based infrastructure.
By completing this level, you not only advance in the game but also reinforce foundational skills that will be invaluable in real-world DevOps.
