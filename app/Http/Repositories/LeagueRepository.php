<?php

namespace App\Http\Repositories;

use App\Models\League;

class LeagueRepository
{
    public function create(array $data): League
    {
        list($leagueName, $leagueMin, $leagueMax, $leagueFormat
            , $leagueType, $leagueChallengeLevel, $startDate, $setCloseDate, $closeDate, $venueId) = $data;

        $league = new League();
        $league->name = $leagueName;
        $league->min_teams = $leagueMin;
        $league->max_teams = $leagueMax;
        $league->format = $leagueFormat;
        $league->type = $leagueType;
        $league->start_date = $startDate;
        $league->close_date = $closeDate;
        $league->set_close_date = $setCloseDate;
        $league->challenge_level = $leagueChallengeLevel;
        $league->venue_affiliation = $venueId;
        $league->save();

        return $league;
    }
}
