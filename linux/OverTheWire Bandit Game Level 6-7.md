# OverTheWire Bandit - Level 6 to Level 7 Solution 🎮🔐

## The Goal 🎯:
Move from **Level 6** to **Level 7** by finding the password file that is owned by `bandit7` and has a size of 33 bytes. Use the `find` command to search for this file.

---

## My Solution 💻:

### Step 1: Log into the server using SSH 🔑
We use SSH to connect to the OverTheWire Bandit server. The username is `bandit6`, and the port is `2220`. The `-p` option is used to specify the port.

```bash
ssh bandit6@bandit.labs.overthewire.org -p 2220
```

## Step 2: Search for the file using the `find` command 🔍
Use the `find` command to locate a file of size 33 bytes that is owned by `bandit7` and has bandit6 as its group. You may encounter several "Permission denied" messages, but keep looking for the relevant file path.

```bash
find . -size 33c -user bandit7 -group bandit6
```
You will see a series of permission errors, but the correct file is `/var/lib/dpkg/info/bandit7.password`.

## Step 3: Display the file's contents using `cat` 📖
Once the correct file is found, use `cat` to display its contents, which will reveal the password for the next level.

```bash
cat /var/lib/dpkg/info/bandit7.password
```

## Output:

```bash
morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj
```

## Step 4: Exit the session 🛑
After retrieving the password, exit the session to complete the level.

```bash
exit
```

---

## Takeaways 📚:

1. Using `find` for File Search 🔍: The `find` command is powerful for searching files based on specific criteria like size, owner, or group. It's an essential tool for system exploration.

2. Interpreting Permission Denied Errors 🚫: Understanding how to ignore permission issues and still identify the correct file path is a critical skill when working in restrictive environments.

3.Viewing File Contents with `cat` 📑: Using `cat` to view the contents of files is fundamental when working in a terminal environment to retrieve important data, such as passwords.

By completing this level, you've strengthened your ability to search for files and navigate system permissions—key skills for anyone working with Linux or managing server environments. 🚀
