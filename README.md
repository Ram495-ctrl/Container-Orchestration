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

Cluster is created with 3 Nodes and is active cluster

![image](https://github.com/user-attachments/assets/20e2d3e2-9c60-4cfe-92ab-59e8568327da)


![image](https://github.com/user-attachments/assets/f7aa79fb-2541-4d29-b28f-96915d3e44c5)

Step4.

Installing the nodejs app into the cluster and trying to run it manually. After creating the deployment files.

Frontend and the Backend YAML are deployed successfully 

![image](https://github.com/user-attachments/assets/d041a511-0ed4-40b6-82de-9060f6f9442c)

When I give the external IP of the load balancer front end service the application is displayed as expected 

![image](https://github.com/user-attachments/assets/fdcc0382-50c4-4e8d-a881-ef366f2e006b)

All the 6 Pods are running as expected 

![image](https://github.com/user-attachments/assets/bd0ca09a-e9fb-4c25-aa52-4522f4c95d27)




