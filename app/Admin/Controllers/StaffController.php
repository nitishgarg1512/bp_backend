<?php

namespace App\Admin\Controllers;

use App\Models\Staff;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

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
        return $content->body(view('admin::staff.index'));
    }

    public function inviteUser(Content $content)
    {
        return view('admin::staff.ajax-invite');
    }
}
