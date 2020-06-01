APPNAME = complexcluster

help:
	@echo "usage: make [command]"

download_python_environment_manager:
	@if test ! -d ".tmp/python-environment-manager-master";then \
                sudo su -m $(SUDO_USER) -c "mkdir -p .tmp"; \
                sudo su -m $(SUDO_USER) -c "cd .tmp; wget https://github.com/terminal-labs/python-environment-manager/archive/master.zip"; \
                sudo su -m $(SUDO_USER) -c "cd .tmp; unzip master.zip"; \
        fi

inflate: download_python_environment_manager
	#@sudo bash .tmp/python-environment-manager-master/makefile_resources/scripts_inflation/python_build.sh $(APPNAME) $(SUDO_USER) linux
	#@sudo bash .tmp/python-environment-manager-master/makefile_resources/scripts_inflation/python_emit_activation_script.sh $(APPNAME) $(SUDO_USER) linux

	@wget https://raw.githubusercontent.com/terminal-labs/shelf/master/vagrant/Vagrantfile
	@sudo bash .tmp/python-environment-manager-master/makefile_resources/scripts_inflation/build.sh $(APPNAME) $(SUDO_USER) vagrant
	@sudo bash .tmp/python-environment-manager-master/makefile_resources/scripts_inflation/emit_activation_script.sh $(APPNAME) $(SUDO_USER) vagrant
