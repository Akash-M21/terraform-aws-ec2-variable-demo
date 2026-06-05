# Terraform AWS EC2 Demo

![Terraform](https://img.shields.io/badge/Terraform-v1.5+-623CE4?logo=terraform)
![AWS](https://img.shields.io/badge/AWS-EC2-FF9900?logo=amazonaws)
![IaC](https://img.shields.io/badge/Infrastructure%20as%20Code-Enabled-blue)

## Overview

This project demonstrates the usage of all major Terraform variable types while provisioning AWS EC2 instances.

It serves as a beginner-friendly Infrastructure as Code (IaC) project to understand:

* Terraform workflow
* Variable declaration and usage
* AWS provider configuration
* EC2 provisioning
* Terraform state management
* Infrastructure lifecycle management

---

## Architecture

```text
+--------------------+
| Terraform CLI      |
+---------+----------+
          |
          v
+--------------------+
| AWS Provider       |
+---------+----------+
          |
          v
+--------------------+
| AWS EC2 Instances  |
+--------------------+
```

---

## Project Structure

```text
terraform-demo/
├── provider.tf
├── variables.tf
├── main.tf
├── outputs.tf
├── terraform.tfvars
└── README.md
```

---

## Terraform Variable Types Demonstrated

| Variable Name     | Type         | Purpose                    |
| ----------------- | ------------ | -------------------------- |
| aws_region        | string       | AWS region for deployment  |
| instance_count    | number       | Number of EC2 instances    |
| enable_monitoring | bool         | Enable detailed monitoring |
| subnet_ids        | list(string) | List of subnet IDs         |
| common_tags       | map(string)  | Common resource tags       |
| instance_config   | object       | EC2 configuration object   |
| owner_info        | tuple        | Owner metadata             |
| security_groups   | set(string)  | Unique security group IDs  |

---

## Prerequisites

Ensure the following tools are installed:

| Tool      | Version |
| --------- | ------- |
| Terraform | >= 1.5  |
| AWS CLI   | Latest  |
| Git       | Latest  |

Verify installation:

```bash
terraform version
aws --version
git --version
```

---

## Configure AWS Credentials

Configure AWS credentials using AWS CLI:

```bash
aws configure
```

Provide:

```text
AWS Access Key ID
AWS Secret Access Key
Default Region
Output Format
```

Verify authentication:

```bash
aws sts get-caller-identity
```

---

## Deployment Workflow

### Step 1: Clone Repository

```bash
git clone <repository-url>
cd terraform-demo
```

---

### Step 2: Initialize Terraform

```bash
terraform init
```

Expected Output:

```text
Terraform has been successfully initialized!
```

---

### Step 3: Validate Configuration

```bash
terraform validate
```

Expected Output:

```text
Success! The configuration is valid.
```

---

### Step 4: Format Terraform Code

```bash
terraform fmt -recursive
```

---

### Step 5: Review Execution Plan

```bash
terraform plan
```

Terraform displays the resources that will be created.

---

### Step 6: Deploy Infrastructure

```bash
terraform apply
```

Approve the execution:

```text
Enter a value: yes
```

Terraform provisions the infrastructure.

---

## Verify Resources

View deployed EC2 instances:

```bash
aws ec2 describe-instances
```

Or verify via AWS Console:

```text
AWS Console
 └── EC2
      └── Instances
```

---

## Outputs

Display Terraform outputs:

```bash
terraform output
```

Example:

```text
region = us-east-1
owner_name = Akash
owner_age = 25
owner_active = true
```

---

## Terraform State Management

List managed resources:

```bash
terraform state list
```

Example:

```text
aws_instance.demo[0]
aws_instance.demo[1]
```

Show resource details:

```bash
terraform state show aws_instance.demo[0]
```

---

## Destroy Infrastructure

To avoid AWS charges, destroy resources after testing:

```bash
terraform destroy
```

Confirm:

```text
Enter a value: yes
```

---

## Common Terraform Commands

```bash
terraform init
terraform validate
terraform fmt
terraform plan
terraform apply
terraform show
terraform output
terraform state list
terraform destroy
```

---

## Learning Outcomes

After completing this project, you will understand:

* Infrastructure as Code (IaC)
* Terraform project structure
* Variable types and usage
* AWS provider configuration
* EC2 provisioning
* Terraform state management
* Infrastructure deployment lifecycle
* Terraform best practices

---

## Future Enhancements

Potential improvements:

* Remote Backend using S3
* DynamoDB State Locking
* Terraform Modules
* VPC Creation
* Security Groups
* IAM Roles
* Auto Scaling Groups
* Load Balancer Integration
* GitHub Actions CI/CD Pipeline

---

## Author

**Akash M**

DevOps Engineer | Cloud Enthusiast | Terraform Learner

---

## License

This project is intended for learning and demonstration purposes.
