<?php

namespace App\Http\Repositories;

use App\Models\Venue;

class VenueRepository
{
    public function createVenue($venueName, $venueAddress, $postCode1, $postCode2, $firstName, $surname, $email, $lpId)
    {
        $venue = new Venue();
        $venue->name = $venueName;
        $venue->postcode_1 = $postCode1;
        $venue->postcode_2 = $postCode2;
        $venue->league_provider_id = $lpId;
        // TODO: get region from post code 1
        // TODO: temp hard code = address
        $venue->region = $venueAddress;
        $venue->save();

        $userType = ROLE_VM_S;
        $venueId = $venue->id;
        $staffRepository = new StaffRepository();
        $staffRepository->createStaff( $firstName, $surname, $email, $userType, $venueId, $lpId);
    }

    protected function validate()
    {

    }

    public function getVenuesByLpId(int $lpId)
    {
        return Venue::where(['league_provider_id' => $lpId])->get();
    }
}
