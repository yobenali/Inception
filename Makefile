NAME
all:

fvolume:
	docker volume rm $(docker volume ls -q) && rm -rf /home/yobenali/data/wordpress/* /home/yobenali/data/mariadb/*