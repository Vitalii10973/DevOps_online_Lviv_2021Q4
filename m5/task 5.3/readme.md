1) How many states could has a process in Linux?

In Linux, a process is an instance of executing a program or command. While these processes exist, they’ll be in one of the five possible states: Running or Runnable (R), Uninterruptible Sleep (D), Interruptable Sleep (S), Stopped (T), Zombie (Z)

2) Examine the pstree command. Make output (highlight) the chain (ancestors) of the current process.

![Screenshot_1](https://user-images.githubusercontent.com/93934367/148648718-4f7930cd-8879-420d-bb8d-f414f2954ad1.png)

pstree command shows all processes in a tree structure. It gives us info about ancestors of a rinning processes. Key -p shows PID of process, -i key shows who starts process.

3) What is a proc file system?

/ proc - In this directory, all files are virtual - they are not located on disk, but in RAM. These files contain information about programs (processes) that are currently running on the system.

![Screenshot_2](https://user-images.githubusercontent.com/93934367/148648897-d9956181-6e49-4559-b6af-0274d186a469.png)

4) Print information about the processor (its type, supported technologies, etc.).

We use the command /proc/cpuinfo to find out the information we need.

![Screenshot_3](https://user-images.githubusercontent.com/93934367/148649312-e4472d9b-d11b-442b-ba25-ad4ff9e19a1f.png)

Also we can use the command lscpu.

5) Use the ps command to get information about the process. The information should be as follows: the owner of the process, the arguments with which the process was launched for execution, the group owner of this process, etc

In it’s simplest form, when used without any option, ps will print four columns of information for minimum two processes running in the current shell, the shell itself, and the processes that run in the shell when the command was invoked.

![Screenshot_5](https://user-images.githubusercontent.com/93934367/148649848-020ce383-3ca9-418d-8f29-b282b8299b76.png)

To print information about all prosesses processes we use "ps -A". If we have a necessity to make custom view of the ps command, we will use -o key. Final command: "ps -Ao user,pid,gid,args"

![Screenshot_4](https://user-images.githubusercontent.com/93934367/148650057-75ee197e-4bf0-4fe7-9dbc-ef09b5f19874.png)

6) How to define kernel processes and user processes?

The Linux kernel: The core of the OS. It’s software residing in memory that tells the CPU what to do.

User processes: These are the running programs that the kernel manages. User processes are what collectively make up user space. User processes are also known as just processes. The kernel also allows these processes and servers to communicate with each other (known as inter-process communication, or IPC).

7) Print the list of processes to the terminal. Briefly describe the statuses of the processes. What condition are they in, or can they be arriving in?

The top command on Linux systems allows you to table the list of running processes and estimate how much resources they consume
S — текущий статус процесса: R — running; S — sleeping, Z — zombie and etc.

![Screenshot_6](https://user-images.githubusercontent.com/93934367/148651488-ff9e83f7-ac1c-43b4-acfc-9134af1a139a.png)

8) Display only the processes of a specific user. 

![Screenshot_7](https://user-images.githubusercontent.com/93934367/148651543-02d2673d-bece-471e-960b-287c3e0cef14.png)

9) What utilities can be used to analyze existing running tasks (by analyzing the help for the ps command)?
 
We use the commands - top, htop, ps to analyze existing running tasks

10) Display the processes of the specific user using the top command.

![Screenshot_8](https://user-images.githubusercontent.com/93934367/148651854-06a42f92-e820-404d-b6ec-3f465c9f1a23.png)

11) What interactive commands can be used to control the top command? Give a couple of examples.

Basic utilities :
k	- Kills a process; 
M	- Sorts the list by memory usage; 
N	Sorts the list by PID; 
r	Changes the priority of a process; 
h	Displays the help window; 
z	Displays running processes in colors; 
d	Changes the refresh time interval; 
c	Displays the absolute path of a process; 

Sorts the list by PID; 

![Screenshot_9](https://user-images.githubusercontent.com/93934367/148652163-2f1c528f-d3ae-4185-8915-1bde2403e92e.png)

Sorts the list by memory usage; 

![Screenshot_10](https://user-images.githubusercontent.com/93934367/148652200-6d22228b-7ccd-41aa-ace8-dbdca1a7ba7d.png)

12) Sort the contents of the processes window using various parameters (for example, the amount of processor time taken up, etc.)

To sort the processes by the amount of CPU time, we use the command ps aux --sort cputime

![Screenshot_11](https://user-images.githubusercontent.com/93934367/148652391-53c6f02b-2bd8-4971-8a2f-9e665e37f6ac.png)

To sort the processes by the amount of CPU percent, we use the command ps -aux --sort=%cpu

![Screenshot_12](https://user-images.githubusercontent.com/93934367/148652510-85d52959-9529-426b-ad1a-00873b763027.png)

13) Concept of priority, what commands are used to set priority?

To set priority threre is command "nice" - it will starts process with an adjusted priority.

To change the priority of curently running process there is "renice" command.

14) Can I change the priority of a process using the top command? If so, how?

We can change the priority of the process with the top command. To do this, press "r" in the "upper" interface. You will then be asked online about the PID and priority value (1-19). 

15) Examine the kill command. How to send with the kill commandprocess control signal? Give an example of commonly used signals

This command terminates running processes on a Linux machine. To use these utilities you need to know the PID (process id) of the process you want to kill

Syntax : –kill PID

16) Commands jobs, fg, bg, nohup. What are they for? Use the sleep, yes command to demonstrate the process control mechanism with fg, bg.
  - The "jobs" command is used to display background processes.
  - fg / bg - used to form background processes in the foreground, etc.

For example, I performed "sleep 20s &".

![Screenshot_14](https://user-images.githubusercontent.com/93934367/148653169-71bee7e2-9328-4f06-8ce8-d9a5ccbcff16.png)



