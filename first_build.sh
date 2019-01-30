#!/bin/bash

echo 'composer install'
composer install

echo 'npm install'
npm install

file="./.env"
if ! [ -f "$file" ]
then
	echo "cp './.env.example' './.env'"
    cp './.env.example' './.env'
fi

echo 'php artisan migrate'
php artisan migrate

echo 'php artisan admin:install'
php artisan admin:install

echo 'php artisan admin:import helpers'
php artisan admin:import helpers

echo 'php artisan admin:import media-manager'
php artisan admin:import media-manager






