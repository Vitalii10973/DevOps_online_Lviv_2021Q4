1) Analyze the structure of the /etc/passwd.

![Screenshot_1](https://user-images.githubusercontent.com/93934367/148611655-64e80346-5aa6-4551-a6e9-7020d522871c.png)

Analyze the structure of the /etc/group.

![Screenshot_2](https://user-images.githubusercontent.com/93934367/148611721-df248f10-bfab-410d-b856-982d01ab233d.png)

![Screenshot_3](https://user-images.githubusercontent.com/93934367/148611731-2520fb15-8953-485d-8da8-cc39def38767.png)

A number of software packages require a pseudo-user (and usually the corresponding group; the numerical value is from 1 to 999 according to the accepted norms) to implement the work with privilege separation.
Some examples of pseudo-users: sys ( uid= 3 ), news ( uid= 9 ) etc.

2) - What are the uid ranges?
There is 3 main UID ranges: 0- root, 1-999- pseudo-users, 1000+ - regular users;

   - What is UID? 
 A UID (user identifier) is a number assigned by Linux to each user on the system. This number is used to identify the user to the system and to determine which system resources the user can access.
   - How to define it?
To determine we use - /etc/passwd.

3) - What is GID? How to define it?
A group identifier, often abbreviated to GID, is a numeric value used to represent a specific group
   - How to define it?
To determine we use - /etc/group.

4) How to determine belonging of user to the specific group? 
To determine we use command - id (UserName) or groups (UserName).

![Screenshot_4](https://user-images.githubusercontent.com/93934367/148614072-c5bb7a07-807a-4c9c-b64f-7e050cb45b54.png)

![Screenshot_5](https://user-images.githubusercontent.com/93934367/148614086-90cbf8b3-4585-4e7c-ade8-1c348061d355.png)

5) What are the commands for adding a user to the system? What are the basic parameters required to create a user?
To create a user, use the useradd command

![Screenshot_6](https://user-images.githubusercontent.com/93934367/148614251-ee285c27-6cdd-463e-a7a6-48d6dee0bf23.png)

Also if i need add new user and create home directory entering a command -useradd -m (UserName).
Setting a password for a new user petro is by entering a command - sudo passwd petro.

6) How do I change the name (account name) of an existing user?
sudo usermod -l (new user name) (old user name)

![Screenshot_7](https://user-images.githubusercontent.com/93934367/148614558-2ba6ef7b-9054-44d5-b4ae-7540f427d225.png)

7) What is skell_dir? What is its structure?
Directory /etc/skel/ (skel is derived from the “skeleton”) is used to initiate home directory when a user is first created. “skeleton” directory is defined in
/etc/default/useradd file.

8) How to remove a user from the system (including his mailbox)?
You can use the deluser command to remove a user from the system.
We use the command to remove the user and his home directory from the system - deluser --remove-home (user name).

9) What commands and keys should be used to lock and unlock a user account?
passwd -l UserName - lock the user acount.
passwd -u UserName - unlock the user acount.

10) How to remove a user's password and provide him with a password-free login for subsequent password change?
We use the command : passwd -d UserName to remove the user's password.

11) Display the extended format of information about the directory, tell about the information columns displayed on the terminal.

![Screenshot_10](https://user-images.githubusercontent.com/93934367/148618747-f86797c6-c4d1-42fc-bafe-d1e0decd8d3d.png)

n first column drwxrwxr-x - permissions. In second column (1+) quantity of hard links to a directory/file. In third column displayed owner of the directory. In forth column name of the group to which it directory belongs. In fifth column there is size of the directory/file ( better to use ls -h - more comfortable format of the size ). In two last columns information about time of creation/modification and name of firectory.

12) What access rights exist and for whom (i. e., describe the main roles)? Briefly describe the acronym for access rights.
There are four types of rights. Read (-r), write (-w), execute (-x), (-)- no right. This types of rights available for owner, groups and other users.

13) What is the sequence of defining the relationship between the file and the user?

![Screenshot_11](https://user-images.githubusercontent.com/93934367/148619049-96eb5140-8510-416e-99bf-03a20256959c.png)

If we execute the ls -l command in the directory where our file is saved, we will be able to see the owner of the file, the right to the file and the group to which the file belongs.

14) What commands are used to change the owner of a file (directory), as well as the mode of access to the file? Give examples, demonstrate on the terminal
Use the chown command to change the owner and group of a file or directory.

![Screenshot_12](https://user-images.githubusercontent.com/93934367/148619629-d5f510d8-8124-4ffa-a00a-496f89718c75.png)

15) What is an example of octal representation of access rights? Describe the umask command.
   On Linux and other Unix-like operating systems, new files are created with a default set of permissions. Specifically, a new file's permissions may be restricted in a specific way by applying a permissions "mask" called the umask. The umask command is used to set this mask, or to show you its current value.
   
   There are two ways to represent a file's permissions: symbolically (using symbols like "r" for read, "w" for write, and "x" for execute) or with an octal numeric value.
   
   In Linux, the default permissions value is 666 for a regular file, and 777 for a directory. When creating a new file or directory, the kernel takes this default value, "subtracts" the umask value, and gives the new files the resulting permissions.
   
   So if our umask value is 022, then any new files will, by default, have the permissions 644 (666 - 022). Likewise, any new directories will, by default, be created with the permissions 755 (777 - 022).

![Screenshot_13](https://user-images.githubusercontent.com/93934367/148621171-d4dd930e-42d5-4016-9498-6909322b9c83.png)

   We use the command umask 0004, so if we create a new file, it has the default permissions 662 (666-004). After creating a new file with the touch command we see, that, the new file has permissions -rw-rw-w-- The owner and group may read or write the file, and others may only write it.
   After reboot, values were set by defolt.
   
16) Give definitions of sticky bits and mechanism of identifier substitution. Give an example of files and directories with these attributes.  

In computing, the sticky bit is a user ownership access right flag that can be assigned to files and directories on Unix-like systems.There are two definitions: one for files, one for directories.

For files, particularly executables, superuser could tag these as to be retained in main memory, even when their need ends, to minimize swapping that would occur when another need arises, and the file now has to be reloaded from relatively slow secondary memory.

For directories, when a directory's sticky bit is set, the filesystem treats the files in such directories in a special way so only the file's owner, the directory's owner, or root user can rename or delete the file.

The modern function of the sticky bit refers to directories, and protects directories and their content from being hijacked by non-owners. Files in a shared directory such as /tmp belong to individual owners, and non-owners may not delete, overwrite or rename them.

![Screenshot_14](https://user-images.githubusercontent.com/93934367/148623619-f388a6f8-4a4b-483c-9d05-f477106ffa3a.png)

In this example, I wanted to give full permissions to owner, only read permission to group and no permissions to other users.

17) What file attributes should be present in the command script?
In a command script, the most important attribute is the attribute - "execute" (x). Allows a file to be executed by users or the operating system.
