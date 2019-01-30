#!/bin/bash

echo 'composer install'
composer install

echo 'npm install'
npm install

echo 'php artisan migrate'
php artisan migrate





