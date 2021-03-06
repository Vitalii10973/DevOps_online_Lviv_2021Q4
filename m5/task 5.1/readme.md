PART 1.

1. In order to log in to the system as root we use the command - sudo su

2. Use the passwd command to change the password.

![Screenshot_1](https://user-images.githubusercontent.com/93934367/148284833-f26b40cf-92a2-459e-8a22-5974afb4cea9.png)

Examine the basic parameters of the command

![Screenshot_1 1](https://user-images.githubusercontent.com/93934367/148284873-1c68967b-b02f-4568-9496-5acb7dd46ec8.png)

 What system file does it change ? It change the system file - /etc/shadow
 
 ![Screenshot_2](https://user-images.githubusercontent.com/93934367/148285084-264a363c-b0d0-4b0a-b157-f34d94f5bfcd.png)

3. Determine the users registered in the system, as well as what commands they execute.

![Screenshot_3](https://user-images.githubusercontent.com/93934367/148285207-67978c34-0733-41d4-b9d5-ec025645a715.png)

4. Change personal information about myself.

![Screenshot_4](https://user-images.githubusercontent.com/93934367/148285361-3db3694d-4735-4a10-a305-e86dbf355b14.png)

5. Become familiar with the Linux help system and the man and info commands.Get help on the previously discussed commands, define and describe any two keys for these commands

![Screenshot_4](https://user-images.githubusercontent.com/93934367/148285502-87ac6d1f-ef10-451d-a576-3bd5690c6175.png)

![Screenshot_5](https://user-images.githubusercontent.com/93934367/148285513-14bf0492-ae5a-4e59-b9dc-d6377a45a64b.png)

![Screenshot_6](https://user-images.githubusercontent.com/93934367/148285519-4e2e5d07-b71b-49be-bf41-e4b00de0a188.png)

![Screenshot_7](https://user-images.githubusercontent.com/93934367/148285548-c14ce107-ea93-4d67-ae95-8a09da478aa8.png)

![Screenshot_8](https://user-images.githubusercontent.com/93934367/148285580-9eb8558a-ec51-4463-a34c-4fc6d29fa957.png)

6. Explore the more and less commands using the help system

![Screenshot_9](https://user-images.githubusercontent.com/93934367/148285652-db207126-3b4a-48d9-be35-08f3ec5631a9.png)

![Screenshot_10](https://user-images.githubusercontent.com/93934367/148285659-2e1510c7-387e-412b-bcf1-f5a7b53a6f2b.png)

View the contents of files .bash* using commands.

![Screenshot_11](https://user-images.githubusercontent.com/93934367/148285776-a81c2cdd-84a8-4d2c-a17f-280645ae592b.png)

7. Describe in plans that i am working on laboratory work 

![Screenshot_13](https://user-images.githubusercontent.com/93934367/148285932-c144db0d-20e8-4de6-9169-b1cc4c40fb2b.png)

8. List the contents of the home directory using the ls command

![Screenshot_12](https://user-images.githubusercontent.com/93934367/148286012-539cdad7-c4dd-465b-9683-2d09bf9e9857.png)

PART 2.

9. Examine the tree command.

![Screenshot_14](https://user-images.githubusercontent.com/93934367/148286564-60b22388-d09a-4262-8cf5-55bd7b163e06.png)

10. The "file" command can be used to determine the type of file (for example, text or binary) - it is comand "file"

11. I can go back to my home directory from anywhere in the filesystem using cd~ or cd /home/user

12. To list only directories i can use ls -d */ . 
 -l switch show us files and directories in long mode ( rights for file, id, who created file, date of creatin, name ).
 -a switch show us simple files and directories and system(hiden).

13. -  create a subdirectory in the home directory;
    -  in this subdirectory create a file containing information about directories located in the root directory
    -  view the created file

![Screenshot_16](https://user-images.githubusercontent.com/93934367/148287278-60d2ac0f-04cd-405c-a39a-49b3c0059ad8.png)

   - copy the created file to your home directory using relative and absolute addressing.

![Screenshot_17](https://user-images.githubusercontent.com/93934367/148287455-0d424cbd-7edc-47ac-906a-cc33de73917f.png)

   -  delete the previously created subdirectory with the file requesting removal;
   -  delete the file copied to the home directory

![Screenshot_18](https://user-images.githubusercontent.com/93934367/148287700-59e1cca0-94a9-45b2-9f28-36aa44d68241.png)

14. -  create a subdirectory testin the home directory;
    -  copy the .bash_historyfile to this directory while changing its name to labwork2;
    -  create a hard and soft link to the labwork2file in the test subdirectory; 
    -  rename the hard link file to hard_lnk_labwork2;
    -  rename the soft link file to symb_lnk_labwork2 file; 
    -  then delete the labwork2

![Screenshot_19](https://user-images.githubusercontent.com/93934367/148288066-f70144ed-3f6e-4ca8-8488-9120811164cf.png)
 
The main difference between soft and hard links is that when you delete or move source file, soft link will not work, but hard link will work.
When I try to open (cat softlink) my softlink it is show me message "no such file or directory"

15. Using the locate utility, find all files that contain the squid and traceroute sequence.

![Screenshot_20](https://user-images.githubusercontent.com/93934367/148301160-bf4be1a3-7430-4115-808b-d642b460bf91.png)

16. Determine which partitions are mounted in the system, as well as the types of these partitions.
To determine which partitions mounted in system i used sudo fdisk -l command. .

![Screenshot_22](https://user-images.githubusercontent.com/93934367/148578167-f040e9be-4e95-4117-866a-3a8ec5bca916.png)

17. Count the number of lines containing a given sequence of characters in a given file.

![Screenshot_23](https://user-images.githubusercontent.com/93934367/148578149-6a0f6854-d8c8-4c32-9e10-248d6bd1496a.png)

18. Using the findcommand, find all files in the /etc directory containing the host character sequence.

![Screenshot_21](https://user-images.githubusercontent.com/93934367/148301342-241e57d7-a6b8-4cc7-b639-47bd7cf128c9.png)

20. List?????? all objects in /etc that contain the ss character sequence.

![Screenshot_24](https://user-images.githubusercontent.com/93934367/148578374-bbd08ca6-a76f-4f94-a2ce-f36b0b7eff50.png)

![Screenshot_25](https://user-images.githubusercontent.com/93934367/148578447-2b97012d-0c42-4707-a377-394de7009b9f.png)

In order to find all files that contain ss usinng  a bunch of grep - grep ss ./*

21.Organize a screen-by-screen print of the contents of the /etc directory.

![Screenshot_27](https://user-images.githubusercontent.com/93934367/148579290-02495d80-4ff4-48e7-b6b3-124c0a673a3c.png)

![Screenshot_26](https://user-images.githubusercontent.com/93934367/148579145-a099dfad-d2d1-4305-824d-e6c1ee49ac62.png)

22. Linux supports three types of hardware device: character, block and network. Character devices are read and written directly without buffering, for example the system's serial ports /dev/cua0 and /dev/cua1. Block devices can only be written to and read from in multiples of the block size, typically 512 or 1024 bytes. Block devices are accessed via the buffer cache and may be randomly accessed, that is to say, any block can be read or written no matter where it is on the device. Block devices can be accessed via their device special file but more commonly they are accessed via the file system. Only a block device can support a mounted file system. Network devices are accessed via the BSD socket interface and the networking subsytems described in the Networking chapter (Chapter network-chapter).

23. There is a find command to determine the tyle of the file In Linux there are three file types: 1. simple files for storing information. 2. special files for devices and tunnels. 3. directories

24. Listing the first 5 directory files that were recently accessed in the /etcdirectory. 

![Screenshot_28](https://user-images.githubusercontent.com/93934367/148579596-044ff5d3-dbc5-4e6c-8b0d-bf82c2f41248.png)



