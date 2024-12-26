# OverTheWire Bandit - Level 0 to Level 1 Solution 🎮🔐

## The Goal 🎯:
The challenge requires you to move from **Level 0** to **Level 1** by accessing the password for the next level. You will need to use the password obtained from Level 0 to log into Level 1.

---

## My Solution 💻:

## Step 1: Log into the next level using SSH 🔑
Connect to the Level 1 server using SSH. You’ll use the username bandit1 and the password obtained in the previous level (**263JGJPfgU6LtdEvgfWU1XP5yac29mFx**).

```bash
ssh bandit1@bandit.labs.overthewire.org -p 2220
```
You will be prompted for the password. Use the password you retrieved from Level 0: 

```bash
263JGJPfgU6LtdEvgfWU1XP5yac29mFx
```

## Step 2: List the files in the directory 📂
Once logged in, use the ls command to list the files in the directory using the `ls` command and check for any clues or files relevant to the challenge.

```bash
ls
```

This will return:
```bash
-
```

## Step 3: View the contents using redirection 📖
In Level 0, you used `cat` to view the `readme` file. In Level 1, to view the contents of a file, you may use input redirection (`<`). This allows you to send the contents of a file to a command, in this case, `cat`.

```bash
cat <-
```

## Output: 

```bash
263JGJPfgU6LtdEvgfWU1XP5yac29mFx
```

## Step 4: Exit the session once done 🛑
After retrieving the required information (or password), you can log out of the SSH session by typing:

```bash
exit
```

---

## Takeaways 📚:

1. SSH for Secure Access 🔐: Securely logging into remote systems is a critical skill for developers, system admins, and security professionals. Understanding how to use `ssh` with proper credentials is fundamental when interacting with remote servers.

2. File Interaction via Redirection 🔄: In Linux, redirection (`<`) is a powerful tool that allows you to pass the contents of a file to another command. This is useful in many scenarios, including when you need to interact with files in ways other than just printing them to the screen with `cat`.

3. Efficient Navigation 🧭: While simple, commands like `ls` and `cat` form the backbone of Linux file navigation. Being comfortable with these commands is essential for both security exercises and daily Linux administration tasks.
By completing this level transition, you're continuing to build your command-line and Linux-based navigation skills, which are critical for more advanced challenges in the game and real-world applications. 🚀


