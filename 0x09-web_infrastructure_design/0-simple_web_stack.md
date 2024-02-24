What is a server?
- A server is an actual computer. Although a server is a physical machine in the cloud era it can also be represented by a virtual machine. 

What is the role of the domain name?
- A domain name helps us identify resources in the internet.

What type of DNS record www is in www.foobar.com?
- www is a CNAME (Canonical Name) DNS record-type in www.foobar.com since it also points to the same IP address as foobar.com and if the IP address changes we can only record changes in the DNS A record of foobar.com .

What is the role of the web server?
- The web server is software that delivers web pages. It accepts requests via HTTP or the secure varient HTTPS. It is important to note that we also have two kinds of web servers; static and dynamic.

What is the role of the application server?
- The application server is designed to run and host applications.

What is the role of the database?
- The role of the datatbase is to collect structured information or data. Most use SQL for recording and querying data.

What is the server using to communicate with the computer of the user requesting the website?
- HTTP

Issues with this infrastructure:
SPOF
- A SPOF or single point of failure is any non-redundant part of a system that, if dysfunctional, would cause the entire system to fail. In this particular infrastructure there isn't a load balancer which could result to the system crashing if there are too many users. 

Downtime when maintenance needed (like deploying new code web server needs to be restarted), downtime will occure in this infrastructure because there is onlyone server and database. An additional server is needed to avoid the website from being inaccessible to the user. 
