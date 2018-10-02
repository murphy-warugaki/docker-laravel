.PHONY: reborn-laravel

reborn-laravel:
	@docker-compose build
	@docker-compose up -d
	@echo composer ver: $(docker-compose exec php composer --version)
	@git clone git@github.com:hassyadai/reborn-laravel.git && mv reborn-laravel code
	@cp php/.env cdde/reborn-laravel/
	@docker-compose exec php php ./code/reborn-laravel/artisan migrate
