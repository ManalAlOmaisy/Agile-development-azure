
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
<TODO: Project Plan

* [A link to a Trello board for the project](https://trello.com/b/01dG5ehS/udacity)
* A link to a spreadsheet that includes the original and final project plan>

## Instructions

<TODO:  
* Architectural Diagram (Shows how key parts of the system work)>

<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

* Project running on Azure App Service

* Project cloned into Azure Cloud Shell

* Passing tests that are displayed after running the `make all` command from the `Makefile`

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>


