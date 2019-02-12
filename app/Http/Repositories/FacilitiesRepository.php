<?php

namespace App\Http\Repositories;


use App\Models\Facilities;

class FacilitiesRepository
{
    public function getFaciliities(int $venueId)
    {
        return Facilities::where(['venue_affiliation' => $venueId])->first();
    }
}
