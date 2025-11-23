🌍 Terraform Basics — Concepts & Getting Started

This repository provides a beginner-friendly guide to understanding the fundamental concepts of Terraform, the popular Infrastructure-as-Code (IaC) tool used to provision, manage, and automate cloud infrastructure. These notes help you learn the core ideas that Terraform is built on, along with practical examples and commands.

📌 About

This project explains Terraform basics in a simple and practical way. Instead of diving into advanced provisioning patterns, it focuses on the essential concepts that new learners must understand before building real infrastructure.

Whether you are a developer, DevOps engineer, cloud learner, or SRE beginner, this repo helps you get started with:

Terraform workflow

Key files and directory structure

Resources, variables, outputs

Providers

State files

Modules

Basic commands

Best practices

This is ideal for beginners or anyone preparing for cloud interviews.

🧠 What Is Terraform?

Terraform is an Infrastructure-as-Code (IaC) tool that lets you describe cloud infrastructure using declarative configuration files. Terraform takes your configuration and provisions the actual cloud resources (AWS, Azure, GCP, etc.) automatically.

🧩 Core Terraform Concepts
1️⃣ Providers

Providers connect Terraform to cloud platforms or tools.

Examples:

aws

azurerm

google

kubernetes

provider "aws" {
  region = "us-east-1"
}

2️⃣ Resources

Resources are the actual cloud objects Terraform creates.

resource "aws_instance" "web" {
  ami           = "ami-12345"
  instance_type = "t2.micro"
}

3️⃣ Variables

Variables take input from users or environment files.

variable "instance_type" {
  default = "t2.micro"
}

4️⃣ Outputs

Outputs expose useful information after Terraform deploys infrastructure.

output "instance_ip" {
  value = aws_instance.web.public_ip
}

5️⃣ Terraform State

Terraform maintains a state file (terraform.tfstate) that keeps track of created resources.
This is critical because Terraform is stateful and uses this file for:

tracking resources

applying changes

detecting drift

ensuring idempotency

Never edit the state file manually.

6️⃣ Modules

Modules allow you to group and reuse Terraform configurations.

Example module usage:

module "network" {
  source = "./modules/vpc"
  cidr   = "10.0.0.0/16"
}

7️⃣ Terraform Workflow

The core workflow is:

terraform init
terraform plan
terraform apply
terraform destroy

👉 Basic Terraform Commands
Command	Description
terraform init	Downloads providers & initializes working directory
terraform validate	Validates config files
terraform plan	Shows changes Terraform will make
terraform apply	Creates/updates infrastructure
terraform destroy	Removes all managed resources
terraform fmt	Formats the code
terraform show	Shows state or plan details
terraform state	Advanced manipulation of state