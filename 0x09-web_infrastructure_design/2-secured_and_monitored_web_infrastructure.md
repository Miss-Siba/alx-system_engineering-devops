THe following components have been added to the structure:
3 firewalls
1 SSL certificate to serve www.foobar.com over HTTPS
3 monitoring clients (data collector for Sumologic or other monitoring services)

What is a SSL certificate?
An SSL certificate is a digital certificate that authenticates a website's identity and enables an encrypted connection.Websites which deal with client information must have an SSL certificate for financial and confidential transactions. 
How does it wok?
- When a browser attempts to access a secure website the site asks for identification, the web server sends a copy of the certificate and the browser verifies it and allows access. 

What is a firewall?
- A Firewall is a network security device that  monitors and filters incoming and outgoing network traffic based on an organization’s previously established security policies. It acts as a safety barrier.

Monitoring
- This is often supported by the statment "You cannot fix or improve what you cannot measure". Infrastructure Monitoring is used to collect health and performance data from servers, virtual machines, containers, databases, and other backend components in a tech stack.
How does monitoring work?
- There are monitoring tools which can be used:
	- New Relic
		This can be done by adding a piece of javascript to the website. The agent will collect information and send to the new relic server.
		Gives a detailed analysis of every stack at every level (for example the website is too slow or users are getting the same error.).
	- Data Dog
		Allows you to measure and monitor everything with graphs.
	- Uptime robot
		Simple service that will check that your website is responding from different locations from multiply locations.
		This is the bare minimum.
	- Nagios
		Open source project widely used in tehc.
	- WaveFront
		Ability to analyse anything that can produce data.
		Entities with large amount of users such as linkedin and facebook use such tools.
Server performance monitoring tools such as New Relic can be used to monitor web server QPS.
Issues with this infrastructure:
- Terminating SSL at the load balancer level is an issue
	This practise can pose a security threat as the data that are passing across the network from the load balancer to the App Server are now unencrypted,		and that will leave applications vulnerable.
- Having only one MySQL server capable of accepting writes is an issue:
	SPOF - If the server goes down or experiences issues, it can cause downtime and disrupt the entire system. Without redundancy, there's no failover mechanism to handle such failures gracefully.
	Scalability limitations - A single server can only handle a limited amount of write traffic. As your application grows, the server might become a bottleneck, leading to performance degradation or even system failures.
- Having servers with all the same components (database, web server and application server) might be a problem:
	Resources underutilized - f all servers have the same components, they might not be fully utilized.
	Limited Flexibility - Homogeneous server configurations can limit flexibility in adapting to changing requirements.

