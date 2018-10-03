.PHONY: reborn-laravel

reborn-laravel:
	@docker-compose build
	@docker-compose up -d
	@git clone git@github.com:hassyadai/reborn-laravel.git && mv reborn-laravel code
	@cp php/.env code/reborn-laravel/
	@docker-compose exec php php ./code/reborn-laravel/artisan migrate
