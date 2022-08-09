init:
	terraform -chdir=terraform init
deploy:
	terraform -chdir=terraform apply
destroy:
	terraform -chdir=terraform destroy
