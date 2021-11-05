# AzureAppServiceTerraform
Creating a module for Azure app services and trying to deploy it through GitHub Actions.

1. Provider.tf is being used to define the terraform version and the cloud provider which we will be using.
2. Backend.tf is written to initialize the backend in azure to store the terraform state file.
3. Vars.tf file is used to define variables which will be mapped to the values defined in terraform.tfvars
4. Terraform.tfvars where the values of the varibles will be defined
5. Main.tf is the file where the architecture components are going to be created.
6. Output.tf file will print the values of the variables we define in the file on the command line after terraform apply.

Github Workflows:-
 terraform.yaml contains the pipeline script which will be executed in the github actions.
