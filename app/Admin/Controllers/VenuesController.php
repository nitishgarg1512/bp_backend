<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Repositories\VenueRepository;
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
        return $content->body(view('admin::venue.index'));
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
            $repository->createVenue($venueName, $venueAddress, $postCode1, $postCode2, $firstName, $surname, $email, $lpId);

            return view('admin::venue.ajax-add', [
                'name' => $firstName,
                'email' => $email,
                'venue' => $venueName
            ]);
        } catch (\Exception $ex) {
            return $ex->getMessage();
        }
    }
}
