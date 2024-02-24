The following components were added:
1 server
1 load-balancer (HAproxy) configured as cluster with the other one

Splitting components such as the web server, application server, and database onto separate servers can have several effects:
- Improved performance
- Scalability
- Fault isolation
- Easy to maintain
Adding an extra load-balancer and server increases performance and reduces chances of system failure. Spliting components also helps with fault isolation thus making it easier to fix bugs and study system issues. 
