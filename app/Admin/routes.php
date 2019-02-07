<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {
    $router->get('/phpinfo', 'HomeController@index');
    $router->get('/', 'DashboardController@index');
    $router->get('/dashboard', 'DashboardController@index');

    $router->resource('leagueproviders', LeagueProviderController::class);
    $router->resource('staff', StaffController::class);
    $router->resource('venues', VenuesController::class);

});
