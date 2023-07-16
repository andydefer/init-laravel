.PHONY: helpers
.PHONY: analyse
helpers:
	php artisan ide-helper:generate
	php artisan ide-helper:models -F helpers/modelHelper.php -M
	php artisan ide-helper:meta

analyse:
	./vendor/bin/duster fix
	./vendor/bin/duster lint
