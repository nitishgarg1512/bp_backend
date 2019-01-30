<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Facilities extends Model
{
    protected $table = 'facilities';

    public function venue()
    {
        return $this->belongsTo('App\Models\Venue', 'venue_affiliation');
    }

    public function _5aside()
    {
        return $this->hasMany('App\Models\Pitches', 'venue_affiliation');
    }

    public function _7aside()
    {
        return $this->hasMany('App\Models\Pitches', 'venue_affiliation');
    }

    public function _11aside()
    {
        return $this->hasMany('App\Models\Pitches', 'venue_affiliation');
    }

}
