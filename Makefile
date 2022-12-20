.PHONY: db-up db-down ss-build ss-run
 
db-up:
	@docker-compose up -d db
 
db-down:
	@docker-compose rm -fsv db
 
ss-build:
	@docker-compose build --force-rm schemaspy
 
ss-run:
	@docker-compose run --rm schemaspy
