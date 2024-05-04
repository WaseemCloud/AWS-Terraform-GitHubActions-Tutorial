# AWS-Terraform-GitHubActions-Tutorial 👨‍💻🚀☁️

![create-your-github-actions](https://github.com/WaseemCloud/AWS-Terraform-GitHubActions-Tutorial/assets/157589909/42133ea0-916d-4a3a-a7e9-eda9bba76fe4)

In this tutorial, I will be deploying a simple Terraform project, which is basically creating a single S3 Bucket, using GitHub Actions.

--------------------------------------------------
# 1) Creating S3 Bucket for Terraform StateFile:
--------------------------------------------------
- First we will be creating an S3 bucket "wasim-terraform-state" for our remote state.


--------------------------------------------------
# 2) Setting up your GitHub Repository:
--------------------------------------------------
- Create a GitHub Repository.
   
- Create a local folder, where you want to clone the created repository in:

        mkdir FOLDER_NAME            
  
  
-  If on Windows, open the folder and right click to open “Git Bash Here”. If macbook change directory to that folder and perform the clone command.

- The clone command would be :
  
        git clone REPO-LINK  

- Create a branch in this repository using the Terminal. This branch will be used to do
any developments and changes, and when everything is ready, we can push to the
main.

- To create a new feature branch:

        git checkout -b feature  

--------------------------------------------------
# 3) Verify that AWS CLI is installed locally:
--------------------------------------------------

- To verify that AWS CLI is installed:

        aws --version

--------------------------------------------------
# 4) Creating necessary folders:
--------------------------------------------------

- Go to your cloned repository directory, and create the following two folder:
1) terraform
2) .github/workflows
   
 ![Screen Shot 2024-05-04 at 8 11 34 PM](https://github.com/WaseemCloud/AWS-Terraform-GitHubActions-Tutorial/assets/157589909/f6e05a8d-3564-4193-bde3-55bf58272f4a)
