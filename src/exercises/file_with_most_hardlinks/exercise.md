# File with most hardlinks

A files hardlink count is the number appearing in the second column of ls -l:

```bash
$ ls -l /etc/passwd
-rw-r--r-- 1 root root 3690 May  1 01:14 /etc/passwd
           |
           ------- This is the hardlink count for this file
```

another example:

```bash
$ stat /etc/passwd
  File: /etc/passwd
  Size: 3690       Blocks: 8          IO Block: 4096   regular file
Device: 802h/2050d Inode: 4723066     Links: 1 <------- this is the hardlink count
Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)
Access: 2021-05-01 01:14:14.680203053 +0300
Modify: 2021-05-01 01:14:14.680203053 +0300
Change: 2021-05-01 01:14:14.680203053 +0300
 Birth: 2021-05-01 01:14:14.680203053 +0300
folders have hardlinks too! Here is an example:
$ ls -ld /etc/init.d
drwxr-xr-x 2 root root 4096 Jun 18 19:52 /etc/init.d
           |
           ---------  This is the hardlink of the folder
```

The "-d" flag tells ls to show information about the folder instead of showing what is within the folder.

Write a script to find the folder with the most hardlinks in /etc. Use ls or stat (whichever is more convenient for you)
Don't worry about folders you can't access, You can dis-regard all of those.

Hints:
- if you want find(1) to work with an expression you can do:

```bash
find [folder] \( expr1 -or/-and/... expr2 \) ....
```
