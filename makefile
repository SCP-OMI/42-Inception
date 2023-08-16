all : up

up :
	@docker-compose -f ./stack/docker-compose.yml up -d 
down :
	@docker-compose -f ./stack/docker-compose.yml down 
stop :
	@docker-compose -f ./stack/docker-compose.yml stop 
start :
	@docker-compose -f ./stack/docker-compose.yml start
status :
	@docker ps
