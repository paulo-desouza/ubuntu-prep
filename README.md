

# Ubuntu Server deployment automation. 
Bash script, docker-compose file, nginx files and nginx Dockerfile for my Ubuntu Server deployment on AWS EC2 instance. 

The script will run the acme-challenge the first time, and the HTTPS nginx configuration cant be present for it to succeed. 
After successfully running the docker-compose file, you will replace the ~/nginx/nginx.conf with the ~/ubuntu-prep/nginx-ssl/nginx.conf, and run the docker compose again. 

This completes the HTTPS encryption setup with Certbot.



(If you are using AWS servers for your deployment, configuring your website SSL encryption is much much simpler and easier by using Amazon's ACM + Amazon's Load Balancer, it provides free (as in free-beer) SSL certificates signed by amazon. )
