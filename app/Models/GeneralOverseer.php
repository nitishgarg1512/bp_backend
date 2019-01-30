<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class GeneralOverseer extends Model
{
    protected $table = 'general_overseer';

    public function leagueProvider()
    {
        return $this->hasOne('App\Models\LeagueProvider', 'general_overseer_id');
    }
}
