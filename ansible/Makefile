setup:
	ansible-playbook playbook.yml --tags setup -i hosts --vault-password-file vault-password
deploy:
	ansible-playbook playbook.yml --tags deploy -i hosts --vault-password-file vault-password
install-requirements:
	ansible-galaxy install -r requirements.yml
edit-vault:
	ansible-vault edit group_vars/webservers/vault.yml --vault-password-file vault-password

