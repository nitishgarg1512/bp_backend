<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Repositories\LeagueProviderRepository;
use App\Http\Repositories\StaffRepository;
use App\Http\Repositories\VenueRepository;
use App\Models\Venue;
use Encore\Admin\Layout\Content;

class StaffController extends Controller
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

        $lpRepository = new LeagueProviderRepository();

        $data['generalOverseers'] = $lpRepository->generalOverseers($lpId);
        $data['venueManagers'] = $lpRepository->venueManagers($lpId);
        $data['staffs'] = $lpRepository->staffs($lpId);

        return $content->body(view('admin::staff.index', $data));
    }

    public function inviteUser(Content $content)
    {
        try {
            $firstName = request()->request->get('firstName');
            $surname = request()->request->get('surname', null);
            $email = request()->request->get('email');
            $userType = request()->request->get('userType');
            $venueId = request()->request->get('venue');

            $lpId = request()->header('lp_id');

            $venue = null;
            if ($venueId != -1) {
                if ($userType == ROLE_VM_S || $userType == ROLE_S_S) {
                    $venue = Venue::find($venueId);
                }
            }


            $repository = new StaffRepository();
            $repository->createStaff($firstName, $surname, $email, $userType, $venueId, $lpId);

            return view('admin::staff.ajax-invite', [
                'name' => $firstName,
                'email' => $email,
                'venue' => $venue
            ]);
//            return response()->json([
//                'status' => 1,
//                'message' => view('admin::staff.ajax-invite')->render()
//            ]);
        } catch (\Exception $ex) {
            return $ex->getMessage();
//            return response()->json([
//                'status' => 0,
//                'message' => $ex->getMessage()
//            ]);
        }
    }
}
