# OverTheWire Bandit - Level 17 to 18 Solution 🎮🔐

## The Goal 🎯:
We need to find the password for **bandit18** by comparing two files (`passwords.old` and `passwords.new`) and identifying the change between them.

---

## My Solution 💻:

### Step 1: Access Level 17 🔑
First, log into **bandit17** using the private key we obtained in the previous level:

```bash
ssh -i sshkey16.private bandit17@bandit.labs.overthewire.org -p 2220
```

## Step 2: List the Directory Contents 📂
Once logged in, I used the ls command to list the contents of the current directory:

```bash
ls
```

The directory contains two files: `passwords.old`and `passwords.new`.

## Step 3: Compare the Two Files Using `diff` 📝
To find the password for the previous level (i.e., `bandit17`) and the next level (i.e., `bandit18`), I used the `diff` command to compare `passwords.old` and `passwords.new`.

```bash
diff passwords.old passwords.new
```

The output was:

```bash
42c42
< ktfgBvpMzWKR5ENj26IbLGSblgUG9CzB
---
> x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO
```

## Step 4: Interpret the Output 🔍
From the diff output:

The password for `bandit17` (in `passwords.old`) is: `ktfgBvpMzWKR5ENj26IbLGSblgUG9CzB`
The password for `bandit18` (in `passwords.new`) is: `x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO`

## Step 5: Access Level 18 🔑
Now that I have the password for `bandit18`, I can log into bandit18:

```bash
ssh bandit18@bandit.labs.overthewire.org -p 2220
```

---

This successfully logs me into bandit18, and I now have access to the next level.

## Takeaways 📚:

1. Using `diff` for File Comparison 📝: The `diff` command is a powerful tool to compare two files and see the differences between them. In this level, it allowed us to easily identify the password for the next level by comparing `passwords.old` and `passwords.new`.

2. Understanding Output Format 🔍: The `diff` command highlights changes in a simple format. The `<` symbol indicates the content from the first file (`passwords.old`), and the `>` symbol indicates the content from the second file (`passwords.new`).

By completing this level, you learned how to effectively use the `diff` command to compare files and find changes. This is a valuable skill for system administrators and developers who often work with text files and need to track differences. 🚀
