# OverTheWire Bandit - Level 8 to 9 Solution 🎮🔐

## The Goal 🎯:
The challenge is to find the password for the next level by filtering out the unique line in a file (`data.txt`) using the `uniq` command. The password is the unique line that appears once in the file.

---

## My Solution 💻:

### Step 1: Connect to the remote server 🌐
We connect to the OverTheWire Bandit server using SSH as the `bandit8` user.

```bash
ssh bandit8@bandit.labs.overthewire.org -p 2220
```

You will be prompted for the password, which can be found in the game description.

## Step 2: Check the `uniq` command manual 📖
To ensure we use the correct options with the `uniq` command, we check its `man` page.

```bash
man uniq
```

The key option to use here is `-u`, which displays only lines that appear once.

## Step 3: Sort the `file` and `find` the unique line 🔍
Next, we sort the file `data.txt` and use the `uniq -u` command to display the unique line.

```bash
sort data.txt | uniq -u
```

## Output:

```bash
4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
```

This is the password for the next level, Level 9.

Step 4: Note the password for the next level 🔑
The password for the next level is: `4CKMh1JI91bUIZZPXDqGanal4xvAg0JM`.

You will need to use this password to log in to the next level (`bandit9`).

---

## Takeaways 📚:

1. Using `sort` and `uniq` 🔄: The `sort` command organises data, and `uniq -u` filters out duplicate lines, showing only the ones that are unique. This is helpful when working with files that contain repeated or redundant information.

2. Practical File Manipulation 🧠: Understanding how to manipulate text files and extract useful data is a key skill in Unix/Linux environments. These tools are commonly used for log analysis, data cleaning, and system administration tasks.

3. Command Chaining 🔗: The combination of `sort` and `uniq` demonstrates command chaining, which allows you to combine multiple simple commands to solve more complex problems efficiently. This is a powerful technique for any command-line user.

By completing this level, you move one step closer to mastering Unix commands, which are essential for various IT and security-related tasks. 🚀
