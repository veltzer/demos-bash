# Change suffix of files

Write a bash script that changes all files in the current directory that have the
suffix ".JPG" to ".jpg"

If file with the name "*.JPG" do not exist then your program should function correctly
and print out an appropriate error message.

Your software should be silent and do it's work. No unnecessary prints should be emitted.

You can solve this exercise in two ways:
- using glob and a for loop
- using find and the -exec flag

hints:
- you may use the basename(1) utility
- if you want to know if files of pattern A exist then you may use:

```bash
compgen -G A
```

* This will return an exit code indicating whether files that match pattern A exist or don't exist.
