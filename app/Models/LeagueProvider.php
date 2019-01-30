<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LeagueProvider extends Model
{
    protected $table = 'league_provider';

    public function venues()
    {
        return $this->hasMany('App\Models\Venue', 'league_provider_id');
    }

    public function leagues()
    {
        // TODO: add relationshop with leagues
    }

    public function generalOverseer()
    {
        return $this->belongsTo('App\Models\GeneralOverseer', 'general_overseer_id');
    }
}
