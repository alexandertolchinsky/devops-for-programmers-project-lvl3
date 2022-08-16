ansible-setup:
	ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook playbook.yml --tags setup -i hosts --vault-password-file vault-password
ansible-deploy:
	ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook playbook.yml --tags deploy -i hosts --vault-password-file vault-password
ansible-install-requirements:
	ansible-galaxy install -r requirements.yml
ansible-edit-vault:
	ansible-vault edit group_vars/webservers/vault.yml --vault-password-file vault-password

