<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pitches extends Model
{
    protected $table = 'pitches';

    public function venue()
    {
        return $this->belongsTo('App\Models\Venue', 'venue_affiliation');
    }
}
