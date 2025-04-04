# AWS Amplify Terraform Project

This project provisions and manages an AWS Amplify application using Terraform. It includes resources for the Amplify app, branches, and backend environments.

## Project Structure

- **Amplify App**: Configures the Amplify application, including repository, platform, build specifications, and environment variables.
- **Amplify Branch**: Manages the branches for the Amplify app, including environment variables and build settings.
- **Backend Environment**: Sets up the backend environment for the Amplify app.

## Resources

### Amplify App
The Amplify app is defined in the `aws_amplify_app` resource:
- **Name**: `static-website-demo`
- **Repository**: [demo-static-web](https://github.com/ShubhamMca88/demo-static-web.git)
- **Platform**: `WEB`
- **Environment Variables**: 
  - `ENV`: `dev`
- **Build Spec**: Custom build specification for the app.

### Amplify Branch
The main branch is defined in the `aws_amplify_branch` resource:
- **Branch Name**: `main`
- **Stage**: `PRODUCTION`
- **Environment Variables**:
  - `ENV`: `prod`

### Backend Environment
The backend environment is defined in the `aws_amplify_backend_environment` resource:
- **Environment Name**: `prod`
- **Stack Name**: `my-backend-stack`

## Prerequisites

- Terraform installed on your machine.
- AWS credentials configured for Terraform.
- A GitHub repository for the Amplify app.

## Usage

1. Clone this repository.
2. Initialize Terraform:
   ```sh
   terraform init