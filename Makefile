include terraform/Makefile
include ansible/Makefile

run:
	cd terraform && make terraform-init && make terraform-setup
	cd ansible && make ansible-install-requirements && make ansible-setup && make ansible-deploy
