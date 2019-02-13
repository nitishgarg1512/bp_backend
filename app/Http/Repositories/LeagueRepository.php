<?php

namespace App\Http\Repositories;

use App\Models\League;

class LeagueRepository
{
    public function create(array $data): League
    {
        $league = new League();
        $league->name = $data['leagueName'];
        $league->min_teams = $data['leagueMin'];
        $league->max_teams = $data['leagueMax'];
        $league->format = $data['leagueFormat'];
        $league->type = $data['leagueType'];
        $league->start_date = (new \Jenssegers\Date\Date($data['startDate']))->format('Y-m-d');
        $league->close_date = (new \Jenssegers\Date\Date($data['closeDate']))->format('Y-m-d');
        $league->set_close_date = !empty($data['setCloseDate']) ? 1 : 0;
        $league->challenge_level = $data['leagueChallengeLevel'];
        $league->venue_affiliation = $data['venueId'];
        $league->save();

        return $league;
    }

    public function getLeagues(int $venueId)
    {
        return League::where(['venue_affiliation' => $venueId])->get();
    }
}
