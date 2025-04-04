# AWS Amplify Terraform Project

This project provisions an AWS Amplify application, its associated branches, backend environments, and optional custom domain associations using Terraform.

## Project Structure

- **`main.tf`**: Contains the Terraform configuration for creating the Amplify app, branches, backend environments, and domain associations.

## Resources Provisioned

### 1. Amplify App
The Amplify app is created using the `aws_amplify_app` resource. Key configurations include:
- **Name**: `my-awesome-app`
- **Repository**: `https://github.com/username/my-repo.git`
- **Platform**: `WEB`
- **Environment Variables**:
  - `ENV`: `prod`
  - `API_ENDPOINT`: `https://api.example.com`
- **Build Specification**: Custom build commands for the frontend.

### 2. Main Branch
The `main` branch is created using the `aws_amplify_branch` resource. Key configurations include:
- **Branch Name**: `main`
- **Framework**: `React`
- **Stage**: `PRODUCTION`
- **Auto Build**: Enabled

### 3. Backend Environment
The backend environment is created using the `aws_amplify_backend_environment` resource. Key configurations include:
- **Environment Name**: `prod`
- **Stack Name**: `my-backend-stack`

### 4. Custom Domain Association (Optional)
A custom domain is associated with the Amplify app using the `aws_amplify_domain_association` resource. Key configurations include:
- **Domain Name**: `example.com`
- **Subdomain**: `www` (linked to the `main` branch)

## Prerequisites

- Terraform installed on your system.
- AWS credentials configured.
- A GitHub OAuth token stored in the `var.github_oauth_token` variable.

## Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/username/my-repo.git
   cd aws-amplify-terraform-project