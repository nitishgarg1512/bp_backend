<?php

namespace App\Admin\Controllers;

use App\Helper\HelperDate;
use App\Http\Controllers\Controller;
use App\Models\LeagueProvider;
use Encore\Admin\Layout\Content;
use Illuminate\Database\Eloquent\Collection;

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

        $data['generalOverseers'] = $this->generalOverseers($lpId);
        $data['venueManagers'] = $this->venueManagers($lpId);
        $data['staffs'] = $this->staffs($lpId);

        return $content->body(view('admin::staff.index', $data));
    }

    protected function generalOverseers(int $lpId, $limit = 4): array
    {
        $data = LeagueProvider::where(['id' => $lpId])->first();
        $res = $data->generalOverseers()->limit($limit)->get();

        $result = [];
        foreach ($res as $item) {
            $result[] = [
                'id' => $item->id,
                'name' => $item->name,
                'avatar' => $item->avatar,
                'time' => HelperDate::reformatTimeSpan((new \Jenssegers\Date\Date($item->created_at))->timespan())
            ];
        }

        return $result;
    }

    protected function venueManagers(int $lpId, $limit = 4): array
    {
        $data = LeagueProvider::where(['id' => $lpId])->first();
        $res = $data->venueManagers()->limit($limit)->get();

        $result = [];
        foreach ($res as $item) {
            $result[] = [
                'id' => $item->id,
                'name' => $item->name,
                'avatar' => $item->avatar,
                'time' => HelperDate::reformatTimeSpan((new \Jenssegers\Date\Date($item->created_at))->timespan())
            ];
        }

        return $result;
    }

    protected function staffs(int $lpId, $limit = 4): array
    {
        $data = LeagueProvider::where(['id' => $lpId])->first();
        $res = $data->staffs()->limit($limit)->get();

        $result = [];
        foreach ($res as $item) {
            $result[] = [
                'id' => $item->id,
                'name' => $item->name,
                'avatar' => $item->avatar,
                'time' => HelperDate::reformatTimeSpan((new \Jenssegers\Date\Date($item->created_at))->timespan())
            ];
        }

        return $result;
    }

    public function inviteUser(Content $content)
    {
        print_r(request()->request->all());exit;
        return view('admin::staff.ajax-invite');
    }
}
