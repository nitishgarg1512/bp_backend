<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Repositories\FacilitiesRepository;
use App\Http\Repositories\LeagueRepository;
use App\Http\Repositories\PitchesRepository;
use App\Http\Repositories\VenueRepository;
use App\Models\League;
use App\Models\Pitches;
use Encore\Admin\Facades\Admin;
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
        if (!$venue = $venueRepository->getVenuesByAlias($alias)) {
            throw new \Exception('Venue not found!!!');
        }
        $data['venue'] = $venue;

        $facilitiesRepository = new FacilitiesRepository();
        $data['facilities'] = $facilitiesRepository->getFaciliities($venue->id);

        $pitchRepository = new PitchesRepository();
        $data['_5asides'] = $pitchRepository->getAside($venue->id, Pitches::FORMAT_5_NUM);
        $data['_7asides'] = $pitchRepository->getAside($venue->id, Pitches::FORMAT_7_NUM);
        $data['_11asides'] = $pitchRepository->getAside($venue->id, Pitches::FORMAT_11_NUM);
        $data['totalPitches'] = count($data['_5asides']) + count($data['_7asides']) + count($data['_11asides']);

        $data['pitchTypes'] = Pitches::getTypes();
        $data['pitchFormats'] = Pitches::getFormats();

        $data['leagueFormats'] = League::getFormats();
        $data['leagueTypes'] = League::getTypes();
        $data['leagueChallengeLevels'] = League::getChallengeLevels();
        $leagueRepo = new LeagueRepository();
        $data['leagues'] = $leagueRepo->getLeagues($venue->id);

        return $content->body(view('admin::venue.detail', $data));
    }

    public function editFacilities(Content $content)
    {
        $data['venueId'] = request()->request->get('venueId', 0);
        $data['changingRoom'] = request()->request->get('changingRoom', -1);
        $data['parking'] = request()->request->get('parking', -1);
        $data['nearby'] = request()->request->get('nearby', -1);
        $data['floodLights'] = request()->request->get('floodLights', -1);
        $data['created_by'] = Admin::user()->id;
        $data['updated_by'] = Admin::user()->id;

        $facilitiesRepository = new FacilitiesRepository();
        $facilitiesRepository->edit($data);

        return response()->json([
                'status' => 1,
                'message' => ''
        ]);
    }

    public function createPitch(Content $content)
    {
        $pitchName = request()->request->get('pitchName');
        $pitchType = request()->request->get('pitchType');
        $pitchFormat = request()->request->get('pitchFormat');
        $venueId = request()->request->get('pitchesVenueId');
        $createdBy = Admin::user()->id;

        $pitchRepository = new PitchesRepository();
        $pitchRepository->create($pitchName, $pitchType, $pitchFormat, $venueId, $createdBy);

        $data = [
            'name' => $pitchName,
            'type' => Pitches::getTypeString($pitchType),
            'format' => Pitches::getFormatString($pitchFormat),
        ];

        return response()->json([
            'status' => 1,
            'message' => view('admin::venue.ajax-create-pitch', $data)->render()
        ]);
    }

    public function createLeague(Content $content)
    {
        $data['leagueName'] = request()->request->get('leagueName');
        $data['leagueMin'] = request()->request->get('leagueMin');
        $data['leagueMax'] = request()->request->get('leagueMax');
        $data['leagueFormat'] = request()->request->get('leagueFormat');
        $data['leagueType'] = request()->request->get('leagueType');
        $data['leagueChallengeLevel'] = request()->request->get('leagueChallengeLevel');
        $data['startDate'] = request()->request->get('startDate');
        $data['setCloseDate'] = request()->request->get('setCloseDate', null);
        $data['closeDate'] = request()->request->get('closeDate');
        $data['venueId'] = request()->request->get('leagueVenueId');

        $leagueRepo = new LeagueRepository();
        $leagueRepo->create($data);

        $viewData = [
            'name' => $data['leagueName'],
            'min' => $data['leagueMin'],
            'max' => $data['leagueMax'],
            'format' => League::getFormatString($data['leagueFormat']),
            'type' => League::getTypeString($data['leagueType']),
            'challenge' => League::getChallengeLevelString($data['leagueChallengeLevel']),
            'startDate' => $data['startDate'],
            'closeDate' => $data['closeDate'],
        ];

        return response()->json([
            'status' => 1,
            'message' => view('admin::venue.ajax-create-league', $viewData)->render()
        ]);
    }
}
