# terraform_challenge

# Terraform intallation
wget https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip
unzip terraform_0.11.7_linux_amd64.zip
edit ~/.bashrc at the end add the following:  export PATH=$PATH:/home/<username>/terraform
source ~/.bashrc

# Terraform initialization

set up aws cli and configure it. DO NOT commit credentials to the repo
setup connections.tf
run terraform init

#
