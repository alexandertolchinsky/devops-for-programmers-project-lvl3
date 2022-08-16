### Hexlet tests and linter status:
[![Actions Status](https://github.com/alexandertolchinsky/devops-for-programmers-project-lvl3/workflows/hexlet-check/badge.svg)](https://github.com/alexandertolchinsky/devops-for-programmers-project-lvl3/actions)

# Infrastructure as code
## Requirements
- ansible
- ansible-playbook
- terraform
- digital ocean account 
- datadog account

## Getting Started
### Installation
1. Clone the repo
```sh 
git clone https://github.com/alexandertolchinsky/devops-for-programmers-project-lvl3.git
```
2. Prepare terraform.tfvars file
```sh
cp terraform/terraform.tfvar.example terraform/terraform.tfvar
```
3. Edit terraform.tfvars file
```sh
vim terraform/terraform.tfvars
```
4. Edit backend.tf file
```sh
vim terraform/backend.tf
```
5. Setup infrastructure
```sh
cd terraform
make terraform-init
make terraform-setup
```
6. Edit inventory file
```sh
cd ../ansible
vim inventory.ini
```
7. Edit vault-password file
```sh
vim vault-password
```
8. Edit environment variables
```sh
vim group_vars/webservers/all.yml
make ansible-edit-vault                                             
``` 
## How to run 
```sh 
make run
```

## Contact
Alexander Tolchinsky - alexander.tolchinsky@gmail.com

Project link: 
[https://github.com/alexandertolchinsky/devops-for-programmers-project-lvl3](https://github.com/alexandertolchinsky/devops-for-programmers-project-lvl3)

Website link:
[https://devops-for-programmers-project-lvl3.kaap.tech](https://devops-for-programmers-project-lvl3.kaap.tech)
