<?php

namespace App\Admin\Controllers;

use App\Http\Repositories\VenueRepository;
use App\Models\Facilities;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class FacilitiesController extends Controller
{
    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index($alias, Content $content)
    {
        return $content->body(view('admin::facilities.index'));
    }
}
