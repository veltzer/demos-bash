# Pstree

Create a `pstree` like program in ksh.
It should look like this

```txt
init-+-sshd
     +-apache+apache
     +-syslogd
```

stage1: Call ps to create a temp file with the data you need
(program cmd line, pid -> process id, ppid -> parent process id )

stage2: Read the information from the file you created into variables
(arrays) in your program.

stage3: Print the tree, start with process id 1 (init).
