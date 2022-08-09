### Hexlet tests and linter status:
[![Actions Status](https://github.com/alexandertolchinsky/devops-for-programmers-project-lvl3/workflows/hexlet-check/badge.svg)](https://github.com/alexandertolchinsky/devops-for-programmers-project-lvl3/actions)

# Deploy Docker images using Ansible
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
make install-requirements
```
3. Prepare terraform.tfvars file
```sh
cp terraform/terraform.tfvar.example terraform/backend.tf
```
3. Edit terraform.tfvars file
```sh
vim terraform/terraform.tfvars
```
5. Edit backend.tf file
```sh
vim terraform/backend.tf
```
## How to run 
```sh 
make deploy
```

## Contact
Alexander Tolchinsky - alexander.tolchinsky@gmail.com

Project link: 
[https://github.com/alexandertolchinsky/devops-for-programmers-project-lvl3](https://github.com/alexandertolchinsky/devops-for-programmers-project-lvl3)

Website link:
[https://devops-for-programmers-project-lvl3.kaap.tech](https://devops-for-programmers-project-lvl3.kaap.tech)
