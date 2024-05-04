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


--------------------------------------------------
# 5) Write your Terraform program:
--------------------------------------------------

- As soon as you are done with writing your Terraform project, execute the following commands to validate that your Terraform program is working as expected:
  1) terraform init
  2) terraform plan
  3) terraform apply

--------------------------------------------------
# 6) Configure your AWS secrets in GitHub Repository:
--------------------------------------------------

- To allow the authentication between your Github and AWS, you need to configure your AWS Access Secrets in your Github repository's settings.

- Go to your repository settings:
  
  ![Screen Shot 2024-05-04 at 8 19 04 PM](https://github.com/WaseemCloud/AWS-Terraform-GitHubActions-Tutorial/assets/157589909/403e55a2-4741-4614-8663-ff11ff24bbd8)

- Select "Secrets and variables" then "Actions":

![Screen Shot 2024-05-04 at 8 20 53 PM](https://github.com/WaseemCloud/AWS-Terraform-GitHubActions-Tutorial/assets/157589909/4ca73b98-93d5-4239-8749-5f4b0eaf80e7)

- Here where you can add new secrets:
  
![Screen Shot 2024-05-04 at 8 22 18 PM](https://github.com/WaseemCloud/AWS-Terraform-GitHubActions-Tutorial/assets/157589909/1adedf8f-af3e-491f-88ab-5f8872bfb4d0)

--------------------------------------------------
# 7) Write your Github config File:
--------------------------------------------------

- Create a file "deploy.yml" inside your ".github/workflows" directory. This file can be found in the repository.


--------------------------------------------------
# 8) Pushing & Commiting files to feature Branch:
--------------------------------------------------

- First, add all these files before commiting them:

       git add .

- Commit your changes:

      git commit -m "Adding Files"

- Push the changes to "feature" branch:

      git push -u origin feature

--------------------------------------------------
# 9) Creating a Pull Request:
--------------------------------------------------

- Go back to your repository, and switch to your "feature" branch:
  
![Screen Shot 2024-05-04 at 8 27 59 PM](https://github.com/WaseemCloud/AWS-Terraform-GitHubActions-Tutorial/assets/157589909/d095871f-b3a3-47f3-afab-7d7fb0b0455b)

- Click on "Contribute" where you will have an option to create a Pull Request and Merge Request:
  
![Screen Shot 2024-05-04 at 8 28 55 PM](https://github.com/WaseemCloud/AWS-Terraform-GitHubActions-Tutorial/assets/157589909/f6be71a5-16b3-4f03-a292-a0d72a6fe7f7)

--------------------------------------------------
# 10) Validate the Pipeline trigger and execution:
--------------------------------------------------

- Once you have successfully pushed to your main branch, you can go to "Actions" tab, and find something like this:
  
  ![Screen Shot 2024-05-04 at 8 31 09 PM](https://github.com/WaseemCloud/AWS-Terraform-GitHubActions-Tutorial/assets/157589909/849be9e3-bbc0-43ae-9983-7e908dba1a0f)

- This confirms that your pipeline has been triggered. So click on it, and check the logs:
  
![Screen Shot 2024-05-04 at 8 33 17 PM](https://github.com/WaseemCloud/AWS-Terraform-GitHubActions-Tutorial/assets/157589909/2b053d4e-716f-42a1-aeda-b2f232bc2999)
