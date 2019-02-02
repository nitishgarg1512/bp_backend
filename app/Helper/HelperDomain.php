<?php
/**
 * Created by PhpStorm.
 * User: luan
 * Date: 2/2/2019
 * Time: 3:24 PM
 */

namespace App\Helper;


class HelperDomain
{
    public static function getDomain($host)
    {
        $domain = preg_replace('#^https?://#', '', $host);
        if ($domain == 'localhost:8000' || $domain == '127.0.0.1:8000') {
            $domain = 'www.powerleague.bpleagues.com';
        }

        return $domain;
    }

    public static function getImageViaDomain($image)
    {
        return '/storage/' . trim($image);
    }
}
