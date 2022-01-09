After creation two VM, i added NAT and INTERNAL network to VM 1 and only INTERNAL to VM2.

As Internal network main in VM1, we need to change default gateway in /etc/netplan/....yaml to 10.0.2.1 (NAT network).

![Screenshot_1](https://user-images.githubusercontent.com/93934367/148701882-f5083fa0-75d8-47d2-aeb5-5fce7902fd67.png)

![Screenshot_2](https://user-images.githubusercontent.com/93934367/148701885-e941d067-7227-4c5f-ae52-f9560a5f6aac.png)

![Screenshot_3](https://user-images.githubusercontent.com/93934367/148701889-ac924df2-8962-4d5a-85f8-fd117d9b8ed2.png)

![Screenshot_4](https://user-images.githubusercontent.com/93934367/148701891-cd0932d6-ddcf-4895-9da6-5ece5703b670.png)

3.Check the route from VM2 to Host. 

![Screenshot_5](https://user-images.githubusercontent.com/93934367/148701941-4cba528c-3a01-44ee-81b0-5cd91370a3a0.png)

4.Check the access to the Internet, (just ping, for example, 8.8.8.8). 

![Screenshot_6](https://user-images.githubusercontent.com/93934367/148701979-8f63622c-abfb-41fd-8014-e248914ead61.png)

5. Determine, which  resource has an IP address 8.8.8.8.

![Screenshot_7](https://user-images.githubusercontent.com/93934367/148702325-57c83d03-7b0e-4722-8918-1fd69fb97740.png)

6.Determine, which  IP address belongs to resource epam.com. 

![Screenshot_8](https://user-images.githubusercontent.com/93934367/148702395-b841b0e7-89fe-4c97-8c64-120f5d0bd02c.png)

7.Determine the default gateway for your HOST and display routing table. 

![Screenshot_11](https://user-images.githubusercontent.com/93934367/148702694-34caa2f8-50f0-4fe7-b43b-22a3817eab93.png)

8.Trace the route to google.com. 

![Screenshot_9](https://user-images.githubusercontent.com/93934367/148702512-a391b864-071b-49e2-b5a9-4e7675735016.png)

