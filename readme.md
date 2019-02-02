### How to run ###

#### BUILD ####
- Run `composer install`
- Run `npm install`
- copy `.env.example` to `.env`. Update database information and necessary info
- Import db from `database/schema/initial.sql`
- Run `php artisan migrate`
- Run `php artisan server` # GENERAL OVERSEES
- Run `php artisan serve --port=4000` # SUPER ADMIN

#### CUSTOM BUILD ####
- Run `composer install`
- Run `npm install`
- copy `.env.example` to `.env`. Update database information and necessary info
- Run `php artisan migrate`
- Run `php artisan admin:install`
- Run `php artisan admin:import helpers`
- Run `php artisan admin:import media-manager`
- Run `php artisan storage:link`
- Run `php artisan admin:import backup`
- Run `php artisan server` # GENERAL OVERSEES
- Run `php artisan serve --port=4000` # SUPER ADMIN

### How to deploy ###

