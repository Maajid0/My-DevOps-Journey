# OverTheWire Bandit - Level 9 to 10 Solution 🎮🔐

## The Goal 🎯:
The challenge requires us to find the password for the next level, which is hidden within a file (`data.txt`). We need to use the `strings` command to extract human-readable strings and then filter the result with `grep` to find the password.

---

## My Solution 💻:

### Step 1: Connect to the remote server 🌐
We connect to the OverTheWire Bandit server using SSH as the `bandit9` user.

```bash
ssh bandit9@bandit.labs.overthewire.org -p 2220
```

You will be prompted for the password, which is the password for `bandit9` from the previous level.

## Step 2: Use the `strings` command to extract readable strings 📜
The `strings` command extracts sequences of printable characters from a binary file. We run `strings` on the `data.txt` file to display all readable strings.

```bash
strings data.txt
```

## Step 3: Filter the output with `grep` 🔍
Next, we use `grep` to filter for the string `===`, which is part of the pattern that helps us find the password.

```bash
strings data.txt | grep "==="
```

## Output:

```bash
}========== the
3JprD========== passwordi
~fDV3========== is
D9========== FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey
```

The password appears as `FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey`.

## Step 4: Note the password for the next level 🔑
The password for the next level is: `FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey`

You will need to use this password to log in to the next level (`bandit10`).

---

## Takeaways 📚:

1. Using `strings` for Binary Files 🔤: The `strings` command is useful for extracting human-readable text from binary files. It is often used to find embedded strings like passwords, error messages, and other data in executable files or dumps.

2. Filtering with `grep` 🔍: The `grep` command is a powerful tool for searching and filtering through text. When combined with `strings`, it allows you to find specific patterns or text in large amounts of data quickly and efficiently.

3. Basic Unix Text Processing 🧠: Mastering tools like `strings`, `grep`, `sort`, and `uniq` is essential for working with Unix-based systems. They are fundamental for processing, searching, and filtering through text and log files in system administration, security, and development tasks.

By completing this level, you continue to strengthen your command-line skills and your ability to extract valuable information from seemingly obscure files. 🚀
