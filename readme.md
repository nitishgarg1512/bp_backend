### How to run ###

#### solution 1 ####
- Run `composer install`
- Run `npm install`
- copy `.env.example` to `.env`. Update database information and necessary info
- Run `php artisan migrate`
- Run `php artisan admin:install`
- Run `php artisan admin:import helpers`
- Run `php artisan admin:import media-manager`
- Run `php artisan server`

#### solution 2 ####

- Run './first_build.sh' (only first build)
- Run './build.sh' (for second build)
- Run './start.sh'

### How to deploy ###

