<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Venue extends Model
{
    protected $table = 'venue';

    public function generalOverseer()
    {
        return $this->belongsTo('App\Models\LeagueProvider', 'league_provider_id');
    }

    public function venueManagers()
    {
        return $this->hasMany('App\Models\VenueManager', 'venue_affiliation');
    }

    public function staffs()
    {
        return $this->hasMany('App\Models\Staff', 'venue_affiliation');
    }

    public function refs()
    {
        // TODO: add relationshop with refs
    }
}
