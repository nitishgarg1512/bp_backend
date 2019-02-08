<?php

namespace App\Http\Middleware;

use App\Helper\HelperDomain;
use App\Models\LeagueProvider;
use Closure;
use Symfony\Component\HttpFoundation\Response;

class CheckingDomain
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $domain = HelperDomain::getDomain($request->root());
        $model = LeagueProvider::where(['subdomain' => $domain])->first();

        if (empty($model)) {
            throw new \Exception('Need to create a league provider before.', Response::HTTP_NOT_FOUND);
        }

        $request->headers->add(['DOMAIN_NAME' => $domain]);
        $request->headers->add(['LP_ID' => $model->id]);
        $request->headers->add(['LP_NAME' => $model->name]);
        $request->headers->add(['LP_SHORT_NAME' => $model->short_name]);
        $request->headers->add(['LP_CODE' => $model->code]);
        $request->headers->add(['LP_IS_ADMIN' => $model->is_admin]);
        $request->headers->add(['LP_LOGO' => HelperDomain::getImageViaDomain($model->logo)]);

        /**
         * This variable is available globally on all your views, and sub-views
         */
        view()->share('domainName', $domain);
        view()->share('lpName', $model->name);
        view()->share('lpShortName', $model->short_name);
        view()->share('lpCode', $model->code);
        view()->share('lpIsAdmin', $model->is_admin);
        view()->share('lpLogo', HelperDomain::getImageViaDomain($model->logo));

        return $next($request);
    }
}
