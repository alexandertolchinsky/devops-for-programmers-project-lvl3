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
2. Install requirements
```sh
cd ansible
make install-requirements
```
3.Edit inventory file
```sh
vim inventory.ini
```
4. Edit environment variables
```sh
vim group_vars/webservers/all.yml
make edit-vault                                             
```
5. Prepare terraform.tfvars file
```sh
cd ../terraform
cp terraform/terraform.tfvar.example terraform/terraform.tfvar
```
6. Edit terraform.tfvars file
```sh
vim terraform/terraform.tfvars
```
7. Edit backend.tf file
```sh
vim terraform/backend.tf
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
