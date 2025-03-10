# OverTheWire Bandit - Level 11 to 12 Solution 🎮🔐

## The Goal 🎯:
We need to decode the password for the next level. The password in `data.txt` has been rotated 13 times (`ROT13`), and we need to reverse this transformation to find the password for the next level.

## My Solution 💻:

### Step 1: Connect to the remote server 🌐
We connect to the OverTheWire Bandit server using SSH as the `bandit11` user.

```bash
ssh bandit11@bandit.labs.overthewire.org -p 2220
```

You will be prompted for the password, which is the password for bandit11 from the previous level.

## Step 2: Decode the `ROT13` password 🔄
The contents of `data.txt` are encoded using `ROT13`, which is a simple letter substitution cipher that shifts each letter 13 positions in the alphabet.

To decode it, we can use the `tr` (translate) command with the appropriate parameters. The `tr 'A-Za-z' 'N-ZA-Mn-za-m'` command will perform a `ROT13` transformation.

First, we use `cat` to display the contents of the file, then pipe it with `|` to `tr` to decode it.

```bash
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

## Output: 

```bash
7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4
```

## Step 3: Note the password for the next level 🔑
The decoded password for the next level is: `7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4`

You will need to use this password to log in to the next level (`bandit12`).

---

## Takeaways 📚:

1. ROT13 Encoding/Decoding 🔄: ROT13 is a simple cipher used in many systems, particularly for obfuscating text. It shifts each letter 13 places in the alphabet, making it a symmetric cipher (i.e., applying ROT13 twice returns the original text). The `tr` command is commonly used to perform such transformations in Unix-like systems.

2. Using `cat` and `tr` Together 🧩: The `cat` command displays the content of a file, while `tr` is a command for translating characters. By combining these two commands, we can easily decode text encoded with simple ciphers like ROT13.

3. Understanding Character Transformation 🔤: The `tr` command allows us to map characters from one set to another. In this case, we mapped the uppercase and lowercase English alphabets to their ROT13 counterparts. Mastering `tr `and character transformations is useful for a variety of text manipulation tasks.

By completing this level, you’ve learned how to work with simple encryption schemes and efficiently decode data using command-line tools. 🚀


