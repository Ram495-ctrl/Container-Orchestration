# Provider configuration
provider "aws" {
  region = "us-west-2"  # Replace with your desired region
}

# Define a security group
resource "aws_security_group" "web_sg" {
  name        = "terraform-bootstrap"
  description = "Allow HTTP, SSH, ICMP (ping), and custom Node.js application traffic"

  # Allow SSH traffic (port 22)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH from anywhere
  }

  # Allow HTTP traffic (port 80)
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow HTTP traffic from anywhere
  }

  # Allow traffic to Node.js backend (port 3000)
  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow traffic from anywhere
  }

  # Allow traffic to Node.js frontend (port 3001)
  ingress {
    from_port   = 3001
    to_port     = 3001
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow traffic from anywhere
  }

  # Allow ICMP (ping) traffic
  ingress {
    from_port   = -1   # ICMP protocol uses -1 for both inbound and outbound
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow ping from anywhere
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Allow all outbound traffic
  }
}

# Launch an EC2 instance
resource "aws_instance" "my_instance" {
  ami           = "ami-0c80e2b6ccb9ad6d1"  # Replace with a valid AMI ID for your region
  instance_type = "t3.large"               # Free tier eligible instance type
  key_name      = "ramasrinivas_key"           # Reference the existing key pair by its name
  security_groups = [aws_security_group.web_sg.name]  # Reference the security group

  # Bootstrap script to install eksctl, AWS CLI, kubectl, Git, Docker, and configure permissions
  user_data = <<-EOF
    #!/bin/bash
    # Update packages and install required dependencies
    sudo apt update -y && sudo apt install -y curl unzip tar git sudo
