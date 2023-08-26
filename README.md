# URL Shortener Deployment 2

By: Joseph White 

August 25, 2023


## Purpose:

To deploy a URL Shortener application using a custom built Jenkins server via AWS Elastic Beanstalk.


### Steps: 

1. Launch an EC2 and install Jenkins. 

	⁃	Jenkins is used to pull the application from the Github repository for building, testing, and deployment.
	⁃	The EC2 is running on previously configured security settings with access to Ports: 80, 8080, 22.
	⁃	

2. Install the Python package  python3.10-venv

	⁃	This package is used to create isolated virtual environments for Python projects separate from your system wide python installation.
	⁃	`sudo apt install python3-dev python3-venv`

3. Download Jenkins file from remote server to local computer

 - This step is more so for practice of navigating and moving files across networks. 

4. Create IAM roles/permissions in AWS Elastic Beanstalk

	⁃	IAM Roles are used to grant users permissions to create, update, or delete environments
	⁃	IAM permissions control who is allowed to access and manage AWS resources

5. Create application using Elastic Beanstalk. 

	⁃	Here you upload the Jenkins file containing your application. 

### Issues: 

- Be sure to install your Java Package in order to install Jenkins correctly.
