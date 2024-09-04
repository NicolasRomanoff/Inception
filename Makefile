
all :
	docker-compose -f ./srcs/docker-compose.yml up

status :
	docker-compose -f ./srcs/docker-compose.yml ps

logs :
	docker-compose -f ./srcs/docker-compose.yml logs --tail 5

clean :
	docker-compose -f ./srcs/docker-compose.yml stop
	docker-compose -f ./srcs/docker-compose.yml down

config :
	docker-compose -f ./srcs/docker-compose.yml config