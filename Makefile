USERNAME=my_username
PASSWORD=my_password
DATABASE=my_database
HOST=localhost
PORT=5432

clean:
	@docker-compose -f docker/docker-compose.yml down --volumes --remove-orphans --rmi local

run:
	@docker-compose -f docker/docker-compose.yml up --detach --force-recreate --build --remove-orphans

ps:
	@docker-compose -f docker/docker-compose.yml ps --all

check:
	@PGPASSWORD=$(PASSWORD) psql --host=$(HOST) --port=$(PORT) --dbname=$(DATABASE) --username=$(USERNAME) --command="\conninfo"
