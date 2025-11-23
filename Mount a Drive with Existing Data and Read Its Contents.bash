
# You have access to a Linux system with an additional unmounted drive that contains a hidden flag (a regular file with a secret string inside).

# Linux system with an additional unmounted drive.
# Device names on the diagram are deliberately generic.

# Your mission is to:

# Discover the unmounted drive
# Mount it somewhere in the root filesystem
# Capture the flag from the mounted drive

laborant@ubuntu-01:~$ lsblk
NAME
    MAJ:MIN RM SIZE RO TYPE MOUNTPOINTS
vda 253:0    0  40G  0 disk /
vdb 253:16   0  10G  0 disk 
laborant@ubuntu-01:~$ sudo mkdir /mnt/new_dir
laborant@ubuntu-01:~$ sudo mount /dev/vdb /mnt/new_dir
laborant@ubuntu-01:~$ cd /mnt/new_dir
laborant@ubuntu-01:new_dir$ ls
flag.txt  lost+found
laborant@ubuntu-01:new_dir$ cat flag.txt
e71fd413ebc91a5e814bf0b2dd317ca1
laborant@ubuntu-01:new_dir$ ^C
laborant@ubuntu-01:new_dir$ ^C
laborant@ubuntu-01:new_dir$ 