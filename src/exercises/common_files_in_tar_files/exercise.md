# Common files in tar files

Create two tar files with the following commands:
$ for x in {a,b,c}; do echo $x > $x; done; tar cf 1.tar {a,b,c}
$ for x in {b,c,d}; do echo $x > $x; done; tar cf 2.tar {b,c,d}
Your job is to create a third tar file which contains the files which are common to the two archives
you got. Assume that their content is the same.
Call the output file "common.tar" and put it in the same directory.
