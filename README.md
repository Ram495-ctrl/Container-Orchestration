<h1> Graded Assignment on Container Orchestration <h1> 

Step1. 
Using Terraform script I created an Ec2 instance where I will install EKSCTL to create the Kubernetes Cluster: This EC2 instance will act like a boot strap instance to proceed further. The Terraform script will automatically download the EKSCTL and will download from the GIT repositories.

![image](https://github.com/user-attachments/assets/5834e99a-8a30-4ee8-b482-2b3201220ce0)

Step2.
Create the required Docker files using Docker compose

![image](https://github.com/user-attachments/assets/8b3c7a29-9413-4609-82a0-cf4a74abfa4e)

![image](https://github.com/user-attachments/assets/94f8349d-4e79-4937-b417-ca2c85ff479c)

Docker containers are successfully running now 

![image](https://github.com/user-attachments/assets/e539042e-92af-453d-b723-65331fdfc6d3)

Step3.

Create the cluster using EKSCTL – 3 Nodes
