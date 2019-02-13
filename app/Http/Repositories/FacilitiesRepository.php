<?php

namespace App\Http\Repositories;


use App\Models\Facilities;

class FacilitiesRepository
{
    public function getFaciliities(int $venueId)
    {
        return Facilities::where(['venue_affiliation' => $venueId])->first();
    }

    public function edit(array $data)
    {
        if (!$fa = $this->getFaciliities($data['venueId'])) {
            $fa = new Facilities();
            if ($data['changingRoom'] != -1) {
                $fa->changing_rooms = (int)$data['changingRoom'];
            }
            if ($data['parking'] != -1) {
                $fa->parking = (int)$data['parking'];
            }
            if ($data['nearby'] != -1) {
                $fa->near_by = (int)$data['nearby'];
            }
            if ($data['floodLights'] != -1) {
                $fa->flood_lights = (int)$data['floodLights'];
            }
            $fa->venue_affiliation = (int) $data['venueId'];
            $fa->created_by = (int) $data['created_by'];
            $fa->updated_by = (int) $data['updated_by'];
        } else {
            if ($data['changingRoom'] != -1) {
                $fa->changing_rooms = (int)$data['changingRoom'];
            }
            if ($data['parking'] != -1) {
                $fa->parking = (int)$data['parking'];
            }
            if ($data['nearby'] != -1) {
                $fa->near_by = (int)$data['nearby'];
            }
            if ($data['floodLights'] != -1) {
                $fa->flood_lights = (int)$data['floodLights'];
            }
            $fa->venue_affiliation = (int) $data['venueId'];
            $fa->updated_by = (int) $data['updated_by'];
        }
        $fa->save();
    }
}
