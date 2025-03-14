# App Deployment on ECS

## Overview
This repository contains the infrastructure code to deploy a simple Python application to AWS Elastic Container Service (ECS). It uses Terraform for infrastructure provisioning and GitHub Actions for the CI/CD pipeline.

## How to Build

### 1. **Configure AWS Account for Terraform**
   - Ensure that your AWS account is properly configured for Terraform. Refer to the [AWS Terraform Configuration Guide](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) for detailed instructions.

### 2. **Set Up GitHub Secrets**
   - Add the following secrets to your GitHub repository under the "Secrets and Variables" section:
     - `AWS_ACCESS_KEY_ID`: Your AWS access key.
     - `AWS_SECRET_ACCESS_KEY`: Your AWS secret key.
     - `AWS_REGION`: Your AWS region

   This is required to authenticate Terraform and GitHub Actions to interact with AWS.

### 3. **Configure S3 Bucket for Terraform State**
   - Before running Terraform, ensure that you update the S3 bucket name for storing Terraform state files. You can modify the S3 bucket name in the `providers.tf` file located in the `infra` folder.

### 4. **Deploy Infrastructure**
   - Navigate to the `infra` folder and run the following Terraform commands to deploy your infrastructure:
   
     ```bash
     cd infra
     terraform init
     terraform apply
     ```

   This will create all necessary AWS resources, such as ECS clusters, load balancers, and networking components.

### 5. **Build and Deploy Docker Image to ECS**
   - Once the infrastructure is provisioned, GitHub Actions will automatically build the Docker image and deploy it to the ECS cluster on every commit to main branch.
   
## How to Test

After the infrastructure and application are deployed:

1. Retrieve the **Application Load Balancer (ALB) DNS** URL from the Terraform output.
2. Open the ALB DNS in your browser to access the application.
3. Since there are 2 replicas running, you should see that requests are being routed to different instances of the application.

## Areas for Improvement in the Current Codebase

1. **Use Terraform Modules for Reusability**
   - Refactor the Terraform code to use modules for reusable infrastructure components like ECS clusters, ALBs, and networking.

2. **Store Production Variables in Secrets**
   - Use AWS Secrets Manager or AWS Systems Manager Parameter Store to securely store and manage production variables such as database credentials and API keys.

3. **Implement Auto-Scaling for ECS Tasks**
   - Consider implementing auto-scaling for ECS tasks based on CPU or memory utilization to improve scalability and cost efficiency.

5. **Improve CI/CD Pipeline**
   - Enhance the GitHub Actions workflow by adding tests, linting, and security checks before deployment.
