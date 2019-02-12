<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Repositories\FacilitiesRepository;
use App\Http\Repositories\VenueRepository;
use App\Models\Pitches;
use App\Models\Venue;
use Encore\Admin\Layout\Content;

class VenuesController extends Controller
{
    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        $lpId = request()->header('lp_id');
        $venueRepository = new VenueRepository();
        $data['venues'] = $venueRepository->getVenuesByLpId($lpId);
        return $content->body(view('admin::venue.index', $data));
    }

    public function add(Content $content)
    {
        try {
            $venueName = request()->request->get('venueName');
            $venueAddress = request()->request->get('venueAddress');
            $postCode1 = request()->request->get('postCode1');
            $postCode2 = request()->request->get('postCode2');

            $firstName = request()->request->get('firstName');
            $surname = request()->request->get('surname', null);
            $email = request()->request->get('email');

            $lpId = request()->header('lp_id');

            $repository = new VenueRepository();
            $repository->createVenue($venueName, $venueAddress, $postCode1, $postCode2, $firstName, $surname, $email,
                $lpId);

            return view('admin::venue.ajax-add', [
                'name' => $firstName,
                'email' => $email,
                'venue' => $venueName
            ]);
        } catch (\Exception $ex) {
            return $ex->getMessage();
        }
    }

    public function detail($alias, Content $content)
    {
        $lpId = request()->header('lp_id');

        $venueRepository = new VenueRepository();
        $venue = $venueRepository->getVenuesByAlias($alias);
        $data['venue'] = $venue;

        $facilitiesRepository = new FacilitiesRepository();
        $data['facilities'] = $facilitiesRepository->getFaciliities($venue->id);

        $data['pitchTypes'] = Pitches::getTypes();
        $data['pitchFormats'] = Pitches::getFormats();

        return $content->body(view('admin::venue.detail', $data));
    }

    public function editFacilities(Content $content)
    {

    }

    public function createPitch(Content $content)
    {

    }
}
