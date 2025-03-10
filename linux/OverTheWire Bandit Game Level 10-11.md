# OverTheWire Bandit - Level 10 to 11 Solution 🎮🔐

## The Goal 🎯:
We need to decode the password for the next level, which is encoded in Base64 format. The challenge provides us with a file (`data.txt`) containing a Base64-encoded string, and we need to decode it to reveal the password for the next level.

---

## My Solution 💻:

### Step 1: Connect to the remote server 🌐
We connect to the OverTheWire Bandit server using SSH as the `bandit10` user.

```bash
ssh bandit10@bandit.labs.overthewire.org -p 2220
```

You will be prompted for the password, which is the password for bandit10 from the previous level.

## Step 2: Decode the Base64-encoded file 🗝️
The password is encoded in Base64 in the `data.txt` file. We can decode it using the `base64` command with the `-d` (decode) option.

```bash
base64 -d data.txt
```

## Output: 

```bash
dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
```

## Step 3: Note the password for the next level 🔑
The decoded password for the next level is: `dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr`

You will need to use this password to log in to the next level (`bandit11`).

---

## Takeaways 📚:

1. Base64 Encoding/Decoding 🔄: Base64 is a binary-to-text encoding scheme that is commonly used to encode data, such as passwords, for transmission or storage in a text-based format. The `base64` command on Linux allows us to encode or decode Base64 data. The `-d` option is used for decoding.

2. Decoding Files 🧩: When dealing with encoded files or hidden information, tools like `base64` can help reveal the original content. It is common in security and reverse engineering tasks to encounter encoded data that requires decoding before it can be used.

3. Command-Line Tools Mastery 💪: By using commands like `base64`, you improve your ability to work with encoded data, an essential skill for working with encrypted messages, files, and systems that store sensitive information.

By completing this level, you’ve advanced your skills in decoding and handling encoded information, preparing you for more complex challenges ahead. 🚀
