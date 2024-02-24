The following elements have been added:
2 servers
1 web server (Nginx)
1 application server
1 load-balancer (HAproxy)
1 set of application files (your code base)
1 database (MySQL)

The load-balancers distribute traffic to different servers. This is very useful for enterprises which have websites with a lot of traffic.
This is very important for reducing the load of an individual  server ensuring optimum operation.
Examples where this might be useful:
- social networks
- e-commerce sites on big days such as black friday.
There are two types of load balancers: software and hardware.
- Software load balancers conist of 
	- Round Robin - Distributes loads to different servers.
	- Weighted Scheduling Algorhithm 
	- Least connection first scheduling - schedules incoming wight to servers with the least. 

Is your load-balancer enabling an Active-Active or Active-Passive setup, explain the difference between both
- In an active-passive configuration, the server load balancer recognizes a failed node and redirects traffic to the next available node. In an active-active configuration, the load balancer spreads out the workload’s traffic among multiple nodes.

How does a database Primary-Replica (Master-Slave) cluster work?
- It involves a primary/master database server that accepts both read and write operations and one or more secondary/slave servers that replicate data from the primary server.

What is the difference between the Primary node and the Replica node in regard to the application?
- The difference between the Primary node and the Replica node in regard to the application is that-, the primary node is regarded as the authoritative source, and the replica node (also known as slave) databases are synchronized to it(Master).

Issues are with this infrastructure:
The lack of firewalls and HTTPS cause a security threat as the information is open to external threats.
The system also doesnt have any monitoring software therefore it makes it difficult to pick up any bugs and issues encountered during using the service.
