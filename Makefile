include terraform/Makefile
include ansible/Makefile

run:
	cd ansible && make ansible-install-requirements && make ansible-setup && make ansible-deploy
