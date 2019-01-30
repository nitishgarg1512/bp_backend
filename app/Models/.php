<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class  extends Model
{
    use SoftDeletes;

    protected $table = 'demo2';
}
