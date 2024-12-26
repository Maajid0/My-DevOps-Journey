# OverTheWire Bandit - Level 7 to Level 8 Solution 🎮🔐

## The Goal 🎯:
Move from **Level 7** to **Level 8** by finding the password hidden in the `data.txt` file using the `grep` command. The password is related to the term "millionth."

---

## My Solution 💻:

### Step 1: Log into the server using SSH 🔑
We use SSH to connect to the OverTheWire Bandit server. The username is `bandit7`, and the port is `2220`. The `-p` option specifies the port.

```bash
ssh bandit7@bandit.labs.overthewire.org -p 2220
```

## Step 2: Access the `man` page for `grep` 📖
Before searching, it's useful to read the `man` page for `grep` to better understand its options and syntax.

```bash
man grep
```

## Step 3: Search for the term "millionth" using `grep` 🔍
Use the `grep` command to search recursively for the term "millionth" in the `data.txt` file.

```bash
grep -r "millionth" data.txt
```

## Output: 

```bash
data.txt:millionth dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc
```

The password is found in the file `data.txt`, and it is `dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc`.

## Step 4: Exit the session 🛑
After retrieving the password, exit the session to complete the level.

```bash
exit
```

---

## Takeaways 📚:

1. Using `grep` for Pattern Searching 🔍: The `grep` command is essential for searching text in files based on patterns. Understanding the `-r` option for recursive search is useful for locating strings in files or directories.

2. Reading Manual Pages with `man` 📖: Knowing how to read the manual pages using `man` is crucial for exploring and learning about command options, especially when you're unsure of the available flags or syntax.

3. File Searching Efficiency 🧑‍💻: With commands like `grep`, you can efficiently search through large files or directories for specific patterns, saving time and effort in navigating file systems.

By completing this level, you've practiced pattern searching and file exploration, skills that are invaluable for both system administration and security tasks. 🚀
