<?php

namespace App\Admin\Controllers;

use App\Models\Venue;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

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
        return view('admin::venue.ajax-add');
    }
}
