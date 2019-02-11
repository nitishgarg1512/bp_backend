<?php

namespace App\Http\Repositories;

use App\Helper\HelperDate;
use App\Models\LeagueProvider;
use App\Models\Staff;
use App\Models\VenueManager;

class LeagueProviderRepository
{
    public function generalOverseers(int $lpId, $limit = 4): array
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

    public function venueManagers(int $lpId, $limit = 4): array
    {
        $data = LeagueProvider::where(['id' => $lpId])->first();
        $res = $data->venueManagers()->limit($limit)->get();

        $ids =  $res->pluck('id')->toArray();
        $vms = VenueManager::whereIn('id', $ids)->get();
        $keyed = $vms->mapWithKeys(function ($item) {
            return [$item->id => $item->venue];
        });
        $vms = $keyed->all();

        $result = [];
        foreach ($res as $item) {
            $venueName = isset($vms[$item->id]) ? $vms[$item->id]->name: null;

            $result[] = [
                'id' => $item->id,
                'name' => $item->name,
                'avatar' => $item->avatar,
                'time' => HelperDate::reformatTimeSpan((new \Jenssegers\Date\Date($item->created_at))->timespan()),
                'venue' => $venueName,
            ];
        }

        return $result;
    }

    public function staffs(int $lpId, $limit = 4): array
    {
        $data = LeagueProvider::where(['id' => $lpId])->first();
        $res = $data->staffs()->limit($limit)->orderBy('name')->get();

        $ids =  $res->pluck('id')->toArray();
        $staffs = Staff::whereIn('id', $ids)->get();
        $keyed = $staffs->mapWithKeys(function ($item) {
            return [$item->id => $item->venue];
        });
        $staffs = $keyed->all();

        $result = [];
        foreach ($res as $item) {
            $venueName = isset($staffs[$item->id]) ? $staffs[$item->id]->name: null;
            $result[] = [
                'id' => $item->id,
                'name' => $item->name,
                'avatar' => $item->avatar,
                'time' => HelperDate::reformatTimeSpan((new \Jenssegers\Date\Date($item->created_at))->timespan()),
                'venue' => $venueName,
            ];
        }

        return $result;
    }
}
