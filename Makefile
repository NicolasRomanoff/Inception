
all: 
	mkdir -p /home/niromano/data/mariadb
	mkdir -p /home/niromano/data/wordpress
	docker compose -f ./srcs/docker-compose.yml build
	docker compose -f ./srcs/docker-compose.yml up -d

logs:
	docker logs wordpress
	docker logs mariadb
	docker logs nginx

clean:
	docker container stop nginx mariadb wordpress

fclean: clean
	docker network rm inception
	@sudo rm -rf /home/niromano/data/mariadb/*
	@sudo rm -rf /home/niromano/data/wordpress/*
	@docker system prune -af

re : fclean all

.Phony: all logs clean fclean