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


