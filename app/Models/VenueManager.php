<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class VenueManager extends Model
{
    protected $table = 'venue_manager';

    public function venue()
    {
        return $this->belongsTo('App\Models\Venue', 'venue_affiliation');
    }
}
