help:
	@echo "  Run make using the following commands:"
	@echo "    make setup - installs Docker Compose"
	@echo "    make clean - removes Docker containers"
	@echo "    make dvwa - runs the Damn Vulnerable Web Application"
	@echo "    make joomla - runs Joomla"
	@echo "    make wordpress - runs Wordpress"

clean:
	@echo "Removing old containers..."
	sudo docker-compose -p wordpress -f wordpress-compose.yml rm
	sudo docker-compose -p joomla -f joomla-compose.yml rm
	sudo docker volume prune

dvwa:
	@echo "The username/password is admin/password"
	@echo "Press Enter to acknowledge that you have seen the password"
	@read RESPONSEVAR
	sudo docker run --rm -it -p 80:80 vulnerables/web-dvwa

joomla:
	@echo "The database hostname is:    db"
	@echo "    The database name is:    joomla"
	@echo "The database username is:    joomla"
	@echo "The database password is:    joomla"
	@echo "Press Enter to acknowledge that you have seen the above settings"
	@read RESPONSEVAR
	sudo docker-compose -p joomla -f joomla-compose.yml up

setup:
	@echo "Installing Docker Compose..."
	sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-Linux-x86_64" -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose

wordpress:
	sudo docker-compose -p wordpress -f wordpress-compose.yml up
