.PHONY: reborn-laravel

reborn-laravel:
	@docker-compose build
	@docker-compose up -d
	@git clone -b feature/snishimoto git@github.com:hassyadai/reborn-laravel.git && mv reborn-laravel code
	@cp php/.env code/reborn-laravel/
	@cd code
	@docker-compose exec php php ./reborn-laravel/artisan migrate
