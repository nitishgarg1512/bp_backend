<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {
    $router->get('/phpinfo', 'HomeController@index');

    /** DASHBOARD */
    $router->get('/', 'DashboardController@index');
    $router->get('/dashboard', 'DashboardController@index');

    /** STAFF */
    $router->get('/staff', 'StaffController@index');
    $router->post('/staff', 'StaffController@inviteUser');

    /** VENUES */
    $router->get('/venues', 'VenuesController@index');
    $router->post('/venues', 'VenuesController@add');
    $router->get('/venues/{alias}', 'VenuesController@detail');

    $router->resource('leagueproviders', LeagueProviderController::class);

});
