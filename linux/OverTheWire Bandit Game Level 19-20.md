# OverTheWire Bandit - Level 19 to 20 Solution 🎮🔐

## The Goal 🎯:
We need to retrieve the password for **bandit20**. This level involves using a program (`bandit20-do`) that can execute commands as another user (in this case, **bandit20**).

## My Solution 💻:

### Step 1: Access Level 19 🔑
First, log into **bandit19** using the password we obtained from the previous level:

```bash
ssh bandit19@bandit.labs.overthewire.org -p 2220
```

## Step 2: Inspect the Directory Contents 📂
Once logged in, I listed the files in the home directory to find a binary file named `bandit20-do`:

```bash
ls -l ~/
```

The output showed that the `bandit20-do` file is executable and owned by `bandit20`, with permissions allowing `bandit19` to execute it:

```bash
-rwsr-x--- 1 bandit20 bandit19 14880 Sep 19 07:08 bandit20-do
```

## Step 3: Understand the Function of `bandit20-do` 🔍
From the file permissions, we can tell that the `bandit20-do` file has the setuid bit set (`s` in the owner execute position). This means that when bandit19 runs this binary, it will be executed as the user bandit20.

To test the functionality of this command, I ran it with a simple command as suggested:

```bash
./bandit20-do id
```

This showed that the command was indeed being executed as bandit20, not bandit19.

## Step 4: Retrieve the Password for Bandit20 🗝️
Next, I tried to read the password file for `bandit20`, located at `/etc/bandit_pass/bandit20`, but without using `bandit20-do`, I encountered a Permission Denied error:

```bash
cat /etc/bandit_pass/bandit20
cat: /etc/bandit_pass/bandit20: Permission denied
```

Since `bandit20-do` can run commands as `bandit19`, I used it to execute the cat command on the file `/etc/bandit_pass/bandit20`, which contains the password for `bandit20`.

```bash
./bandit20-do cat /etc/bandit_pass/bandit20
```

This returned the password for `bandit20`:

```bash
0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO
```

## Step 5: Access Level 20 🔑
Now that I have the password for `bandit20`, I can log into `bandit20`:

```bash
ssh bandit20@bandit.labs.overthewire.org -p 2220
```

This successfully logs me into bandit20, and I now have access to the next level.

---

## Takeaways 📚:

1. Setuid and Setgid Permissions 🛠️: The `bandit20-do` binary file has the setuid bit set, which allows it to be executed as another user. This was crucial in accessing restricted files that could only be read by bandit20.

2. Running Commands as Another User 🔄: Using `./bandit20-do`, I was able to run the `cat` command as bandit20, giving me access to the password file for the next level. This technique is useful when dealing with binaries that have elevated permissions.

By completing this level, you learned how to use setuid binaries to execute commands as another user. 🚀
