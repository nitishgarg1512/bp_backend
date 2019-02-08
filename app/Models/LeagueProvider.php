<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LeagueProvider extends Model
{
    protected $table = 'league_provider';

    public function generalOverseers()
    {
        return $this->belongsToMany('Encore\Admin\Auth\Database\Administrator', 'lp_r_go', 'league_provider_id', 'general_overseer_id');
    }

    public function venueManagers()
    {
        return $this->belongsToMany('Encore\Admin\Auth\Database\Administrator', 'lp_r_vm', 'league_provider_id', 'venue_manager_id');
    }

    public function staffs()
    {
        return $this->belongsToMany('Encore\Admin\Auth\Database\Administrator', 'lp_r_staff', 'league_provider_id', 'staff_id');
    }
}
