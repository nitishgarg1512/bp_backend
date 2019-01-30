<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
    protected $table = 'staff';

    public function venue()
    {
        return $this->belongsTo('App\Models\Venue', 'venue_affiliation');
    }
}
