<?php

namespace App\Admin\Controllers;

use App\Helper\HelperDomain;
use App\Models\LeagueProvider;
use Encore\Admin\Controllers\AuthController as BaseAuthController;

class AuthController extends BaseAuthController
{
    public function getLogin()
    {
        if ($this->guard()->check()) {
            return redirect($this->redirectPath());
        }

        $domain = HelperDomain::getDomain(request()->root());
        $model = LeagueProvider::where(['subdomain' => $domain])->first();

        if (!empty($model)) {
            return view('admin::login', ['name' => $model->name, 'logo' => HelperDomain::getImageViaDomain($model->subdomain, $model->logo)]);
        }

        throw new \Exception('Need to create a league provider before.', 404);
    }
}
