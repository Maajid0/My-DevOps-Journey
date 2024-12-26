# OverTheWire Bandit - Level 2 to Level 3 Solution 🎮🔐

## The Goal 🎯:
The challenge requires you to move from **Level 2** to **Level 3** by accessing the password for the next level. The password is hidden in a file, and you'll need to use specific commands to locate and view it.

---

## My Solution 💻:

## Step 1: Log into the next level using SSH 🔑
To move to Level 3, connect to the server using SSH. You’ll use the username `bandit3` and the password obtained in the previous level (`2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ`).

```bash
ssh bandit3@bandit.labs.overthewire.org -p 2220
```

You will be prompted for the password. Use the password you retrieved from Level 2:

```bash
2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
```

## Step 2: List the files in the directory 📂
Once logged in, use the `ls` command to list the files in the current directory.

This will output the directory `inhere`: 

```bash
inhere
```

## Step 3: Navigate to the inhere directory 📂
Next, change to the inhere directory using the `cd` command.

```bash
cd inhere
```

## Step 4: List hidden files using `-a` option 📑
To view hidden files (those starting with a dot), use the `-a` option with `ls`. This will reveal all files, including the ones that are typically hidden from normal listing.

```bash
ls -a
```

## Step 5: View the contents of the hidden file 📖
You should now see a file named `...Hiding-From-You`. Use `cat` to view the contents of the file and get the password.

```bash
cat ...Hiding-From-You
```

## Output:

```bash
2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
```

## Step 6: Exit the session once done 🛑
After retrieving the password for Level 3, log out of the SSH session by typing:

```bash
exit
```

---

## Takeaways 📚:

1. SSH for Secure Access 🔐: As always, using SSH to securely access remote servers is crucial. This is the same technique you’ll use in real-world scenarios to manage remote systems securely.

2. Listing Hidden Files 🔎: The `ls -a` command is an important skill when working with Unix-like systems. Hidden files (those starting with a dot) are often used for configuration, logs, or other important system tasks.

3. Navigation and File Access 🧭: Learning how to navigate directories with `cd` and access files with `cat` is essential. These are foundational commands for interacting with files on a Linux system.

By completing this level transition, you're continuing to improve your command-line skills, preparing you for more advanced challenges in system administration and security. 🚀






