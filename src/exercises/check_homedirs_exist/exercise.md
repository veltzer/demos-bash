# Check homedirs exist

A unix systems user database is in a file called /etc/passwd where the shell is the last (seventh)
element and the home directory is the sixth element.

You need to write a system administrator helper script that checks that all users that have bash
as their shell have an existing home directory.

If you find any users that use /bin/bash as their shell and who's home directory is missing,
print an appropriate error message
