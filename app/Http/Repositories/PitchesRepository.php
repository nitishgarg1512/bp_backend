<?php

namespace App\Http\Repositories;

use App\Models\Pitches;

class PitchesRepository
{
    public function create($pitchName, $pitchType, $pitchFormat, $venueId, $createdBy): Pitches
    {
        $pitch = new Pitches();
        $pitch->name = $pitchName;
        $pitch->surface_type = $pitchType;
        $pitch->format = $pitchFormat;
        $pitch->created_by = $createdBy;
        $pitch->venue_affiliation = $venueId;
        $pitch->save();

        return $pitch;
    }

    public function getAside(int $venueId, int $format = Pitches::FORMAT_5_NUM)
    {
        return Pitches::where(['venue_affiliation' => $venueId, 'format' => $format])->get();
    }
}
