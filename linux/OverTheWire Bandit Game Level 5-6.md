
# OverTheWire Bandit - Level 5 to Level 6 Solution 🎮🔐

## The Goal 🎯:
The challenge requires you to move from **Level 5** to **Level 6** by accessing the password for the next level. The password is hidden in a file located in one of several subdirectories. You’ll need to use the `find` command to locate it.

---

## My Solution 💻:

### ## Step 1: Log into the server using SSH 🔑
To enter Level 5, connect to the server using SSH. You’ll use the username `bandit5` and the password obtained from Level 4.

```bash
ssh bandit5@bandit.labs.overthewire.org -p 2220
```

Once logged in, use the password you obtained from Level 4:

```bash
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
```

## Step 2: List the files in the directory 📂
Once logged in, use the `ls` command to list the files in the current directory.

```bash
ls
```

This will show the directory `inhere`. 

## Step 3: Navigate to the inhere directory 📂
Change to the inhere directory using the `cd` command.

```bash
cd inhere
```

## Step 4: List the files with details using `-la` 📑
To view the detailed list of files, including hidden ones, use the `-la` option with `ls`.

```bash
ls -la
```

This will show a number of directories such as `maybehere00`, `maybehere01`, and so on. These are subdirectories that you’ll need to explore further.

## Step 5: Check the man page for the `find` command 📖
The `find` command is useful for searching files in directories. You can check the `man` page for find to understand its usage.

```bash
man find
```

## Step 6: Use `find` to locate the file 📂
You can use `find` to search for files of a specific size and type. In this case, you're looking for an ASCII text file of size 1033 bytes that is not executable. The command to find it is:

```bash
find . -type f -size 1033c ! -executable -exec file {} + | grep ASCII
```

# Output:

```bash
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG
```

## Step 8: Exit the session once done 🛑
After retrieving the password for Level 6, log out of the SSH session by typing:

```bash
exit
```

---

## Takeaways 📚:

1. SSH for Secure Access 🔐: As always, SSH is your gateway to secure remote access. You’ll continue using it for each level to gain access to the system.

2. Using the `find` Command 🔎: The `find` command is essential for locating files based on specific criteria, such as size and type. This skill is valuable for identifying hidden files in complex directory structures.

3. File Identification with `file` 📑: The `file` command is a quick way to determine the content type of a file, whether it’s binary, text, or something else. This is useful for exploring unknown files in directories.

By completing this level, you’re mastering important Linux commands like `find`, `file`, and `cat`, which are fundamental for exploring file systems and extracting information in a variety of contexts. 🚀
