# OverTheWire Bandit - Level 12 to 13 Solution 🎮🔐

## The Goal 🎯:
We need to extract the password for the next level. The contents of `data.txt` have been encoded and compressed multiple times, and we need to go through a series of transformations to reach the final password.

---

## My Solution 💻:

### Step 1: Connect to the remote server 🌐
We connect to the OverTheWire Bandit server using SSH as the `bandit12` user.

```bash
ssh bandit12@bandit.labs.overthewire.org -p 2220
```

You will be prompted for the password, which is the password for `bandit12` from the previous level.

## Step 2: List the directory contents and identify `data.txt` 📂
After logging in, we list the contents of the current directory using the `ls` command.

```bash
ls
```

This reveals that there is a file named `data.txt`, which contains the data we need to process.

## Step 3: Create a temporary directory to work in 🧑‍💻
Next, we create a temporary directory to store the transformed files.

```bash
mktemp -d
```

This generates a unique temporary directory, like /tmp/tmp.hzul3rhWkm.

## Step 4: Copy `data.txt` to the temporary directory 📑
We copy the `data.txt` file into our temporary working directory.

```bash
cp ~/data.txt .
```

## Step 5: Convert the hex dump to binary using `xxd` 🔄
The contents of `data.txt` are a hex dump, so we use `xxd` with the `-r` option to convert it back to binary.

```bash
xxd -r data.txt > compr_file
```

## Step 6: Identify the file type using `file` 🔍
After converting to binary, we check the file type with the `file` command.

```bash
file compr_file
```

The output reveals that the file is gzip compressed.

## Step 7: Decompress the file using `gunzip` 🔓
Since the file is `gzip` compressed, we rename it to `compr_file.gz` and use `gunzip` to decompress it.

```bash
mv compr_file compr_file.gz
gunzip compr_file.gz
```

## Step 8: Check the new file type again 📂
We check the file type of the decompressed file.

```bash
file compr_file
```

This time, it’s identified as bzip2 compressed.

## Step 9: Decompress the bzip2 file using `bunzip2` 🗜
We rename the file to `compr_file.bz2` and use `bunzip2` to decompress it.

```bash
mv compr_file compr_file.bz2
bunzip2 compr_file.bz2
```

## Step 10: Check the file type again 🔍
After decompressing, we check the file type again.

```bash
file compr_file
```

This reveals that the file is gzip compressed once again.

## Step 11: Decompress the file again using `gunzip` 🔓
We rename the file to `compr_file.gz` and decompress it once more using `gunzip`.

```bash
mv compr_file compr_file.gz
gunzip compr_file.gz
```

## Step 12: Check the file type of the decompressed file 📂
We now check the file type of the newly decompressed file.

```bash
file compr_file
```

This shows that it is a POSIX tar archive.

## Step 13: Extract the tar archive using `tar` 🗄
We rename the file to `compr_file.tar` and extract it using `tar`.

```bash
mv compr_file compr_file.tar
tar -xf compr_file.tar
```

## Step 14: Check the new file type 📂
After extracting the archive, we check the new file type.

```bash
file data5.bin
```

This reveals that it is another POSIX tar archive.

# Step 15: Extract the next tar archive 🗄
We rename the file to `data5.bin.tar` and extract it using `tar` again.

```bash
mv data5.bin data5.bin.tar
tar -xf data5.bin.tar
```

## Step 16: Check the new file type 📂
We check the type of the newly extracted file.

```bash
file data6.bin
```

This shows that the file is bzip2 compressed.

## Step 17: Decompress the bzip2 file using `bunzip2` 🗜
We rename the file to data6.bin.bz2 and use `bunzip2` to decompress it.

```bash
mv data6.bin data6.bin.bz2
bunzip2 data6.bin.bz2
```

## Step 18: Check the file type again 🔍
After decompressing, we check the file type. 

```bash
file data6.bin
```

It is identified as another POSIX tar archive.

## Step 19: Extract the tar archive 🗄
We rename the file to `data6.bin.tar` and extract it using `tar` once again.

```bash
mv data6.bin data6.bin.tar
tar -xf data6.bin.tar
```

## Step 20: Check the file type of the extracted file 📂
After extracting, we check the file type again.

```bash
file data8.bin
```

## Step 21: Decompress the gzip file using `gunzip` 🔓
We rename the file to `data8.bin.gz` and decompress it with `gunzip`.

```bash
mv data8.bin data8.bin.gz
gunzip data8.bin.gz
```

Step 22: Verify the final file type 📂
We verify the file type of the decompressed `data8.bin`.

```bash
file data8.bin
```

This time, the file is identified as ASCII text.

## Step 23: Read the contents of the file 📖
Finally, we use `cat` to display the contents of the file, which contains the password.

```bash
cat data8.bin
```

## Output:

```bash
FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn
```

## Step 24: Note the password for the next level 🔑
The password for the next level is: `FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn`

---

## Takeaways 📚:

1. Handling Different Compression Formats 🗜: This level required dealing with multiple compression formats such as `gzip`, `bzip2`, and `tar`. Understanding how to use tools like `gunzip`, `bunzip2`, and `tar` to extract data from different formats is a critical skill for system administration and penetration testing.

2. File Transformation Pipeline 🔄: This level demonstrated how to work through a chain of transformations and decompressions until we reached the final file. Using a sequence of commands like `xxd`, `gunzip`, `bunzip2`, and `tar` can be very effective for handling complex file encodings.

3. Command-Line Efficiency ⚡: The level emphasized how powerful the command line can be for file manipulation. Simple tools like `cat`,`file`, `mv`, and `tar` helped us navigate through various stages of the process.

By completing this level, you have gained experience working with multiple compression methods and learned how to sequentially unpack files using different tools. 🚀

