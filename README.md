
[![Python application test with Github Actions](https://github.com/ManalAlOmaisy/Agile-development-azure/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/ManalAlOmaisy/Agile-development-azure/actions/workflows/pythonapp.yml)

# Overview

This project follows an Agile methodology to develop and deploy a Flask-based application using GitHub Actions and Azure Pipelines for an efficient CI/CD workflow. The key components of the project include:

1. **Version Control & Collaboration:**
  • **GitHub Repository**: hosts the Flask starter code.
  • **GitHub Actions**: Enables automated version control and seamless collaboration.
   
2. **Continuous Deployment with Azure Pipelines**   
  • **Azure Pipeline Deployment**: An Azure pipeline was created to automate the deployment of the application to an Azure Web App. The pipeline was configured to build and release updates with each code change, ensuring rapid iteration and deployment.

3. **Self-Hosted Agent**:
   • The pipeline runs on a self-hosted agent, offering greater control over the build environment.
   
4. **Prediction API Integration**:
   • Post-deployment, the application interacts with an API endpoint to fetch real-time predictions.

This project showcases the end-to-end development lifecycle, from coding and testing to deployment, demonstrating how Agile practices and cloud-based CI/CD tools streamline modern software development.


## Project Plan
 Project Plan

* [A link to a Trello board for the project](https://trello.com/b/01dG5ehS/udacity)
* [A link to a spreadsheet>](https://github.com/ManalAlOmaisy/Agile-development-azure/blob/main/project-management-template.xlsx)

## Instructions


Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

As our initial setup, we need to start with Setting up a GitHub repository were it stores our source control.

From Azure portal, launch the Cloud Shell icon (top-right)

* Project cloned into Azure Cloud Shell
  
  * First create ssh key in your cloud shell running command to start to configure Azure Cloud Shell to communicate with my GitHub. 
   ```ssh-keygen -t rsa```
  * Copy key and then go to github account and create new SSH key from settings. Again This allows to do encrypted communication with GitHub and check out the code.
  
  * Creat and launch virtual environment inside  cloud shell
  ```python3 -m venv ~/.myrepo```

  * To activate the virtual environment 
   ```source ~/.myrepo/bin/activate``` 
 
   * Clone repo into envirnoment
   ```git clone <repository_url >```
  
   * Once cloned, move into the project folder
   ```cd your-project ```
  
  ![git_clone](https://github.com/user-attachments/assets/1f544ac4-3475-4858-bd3c-d260c2485e87)



* Passing tests that are displayed after running the `make all` command from the `Makefile`
  
  * Run  ```make all```
  
  *  This should install dependencies, run linting, execute tests.
  
  ![makefile_test](https://github.com/user-attachments/assets/ee2e8c16-b41d-424d-864f-c3f5debe240e)

* Setting up github action
  
  * In project repo, going to Actions and start setting up an action with the name <name>.yml. Paste script in the YAML file. The source branch would be the main one here.
  * Verify remote test is passing.

  ![image](https://github.com/user-attachments/assets/847e91ac-07f8-43c1-af74-ce476c12767e)


* Project running on Azure App Service
  
   * Deploy the Project to Azure App Service 
 
   * Run:
 
     ```az webapp up --sku -F1 -n <name> -g <resource group>```
  
   * Once deployed, open the displayed URL in your browser to see the running Python app.

    ![App_service](https://github.com/user-attachments/assets/ff488964-1076-4168-9bc3-0ae807ac9a79)

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

  * Go to Azure DevOps from portal
  *Create new project, allow creating public projects by turning the visibility on from the **Organization settings >> Policies** section.
  * Then set up a Service connection from **>> Project settings >> Service connection** via Azure Resource Manager and Authenticatting using Service principal
  * Create a new **Personal Access Token (PAT)** that will be used instead of a password by the build agent for authentication by going to home and click on personal access tokens. Allow full access scope. 
  * From project settings add a new self hosted **agent pool** and grant access permission to all pipelines.
  * Go back to azure cloud shell and create an agent **(VM)**
  * Do all the configuration required inside the VM to make our agent run.
    
    <img width="1920" alt="Screenshot 2025-02-02 at 15 09 33" src="https://github.com/user-attachments/assets/5baa0b55-1a15-41bb-8e01-697523fe4798" />
    
  * Create Pipeline and in the YAML file define the pipeline environment, stages, jobs, tasks, build agent, and other types of configuration used to build the code from the Github and deploy it to the Azure services.
    Added, more Stages to the Pipeline in the YAML file:
      * Build stage and
      * Deploy Web App
  * At the end we can see a Successful pipeline deployment.

    <img width="1920" alt="deployPipelines" src="https://github.com/user-attachments/assets/f59c39b0-fb1f-4dd8-b1c3-4138f81006e6" />


* Running Azure App Service from Azure Pipelines automatic deployment
  
  <img width="1920" alt="webapp_pipeline" src="https://github.com/user-attachments/assets/8d9cee7a-1a17-4eff-8653-961b5fa60ae5" />


* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).

  Run command ``` bash make_predict_azure_app.sh```
  The script sends data and retrieves the predicted house price based on the model.
  The output should look similar to this:

  ```bash
  udacity@Azure:~$ ./make_predict_azure_app.sh
  Port: 443
  {"prediction":[20.35373177134412]}
  ```
  ![CloudShell_Prediction](https://github.com/user-attachments/assets/6463a866-d5e9-461d-add1-2d240d8d5e7a)

* Output of streamed log files from deployed application
  
  <img width="1906" alt="Screenshot 2025-02-02 at 15 46 14" src="https://github.com/user-attachments/assets/68036f7b-b10e-4476-b771-a674a370aea3" />

> 

## Enhancements

* Frontend Integration
* Containerization
* Use Azure Kubernetes Service or Docker Compose to enable scalability, simplified resource management.

## Demo 

[youtube link](https://youtu.be/kRr9JwKvu4o)



