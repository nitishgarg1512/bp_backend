<?php

namespace App\Admin\Controllers;

use App\Models\LeagueProvider;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class LeagueProviderController extends Controller
{
    use HasResourceActions;

    protected static $title = 'League Provider';

    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header(self::$title . ' List')
            ->description('list')
            ->body($this->grid());
    }

    /**
     * Show interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function show($id, Content $content)
    {
        return $content
            ->header(self::$title . 'Detail')
            ->description('description')
            ->body($this->detail($id));
    }

    /**
     * Edit interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->header(self::$title . 'Edit')
            ->description('description')
            ->body($this->form()->edit($id));
    }

    /**
     * Create interface.
     *
     * @param Content $content
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header(self::$title . 'Create')
            ->description('description')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new LeagueProvider);

        $grid->id('ID');
        $grid->name('Name');
        $grid->short_name('Short Name');
        $grid->code('Code');
        $grid->subdomain('Subdomain');
        $grid->created_at('Created at');
        $grid->updated_at('Updated at');

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(LeagueProvider::findOrFail($id));

        $show->id('ID');
        $show->name('Name');
        $show->subdomain('Subdomain');
        $show->created_at('Created at');
        $show->updated_at('Updated at');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new LeagueProvider);

        $form->display('id', 'ID');
        $form->text('name', 'Name');
        $form->text('sort_name', 'Short Name');
        $form->text('code', 'Code');
        $form->text('subdomain', 'Subdomain');
        $form->image('logo', 'Logo');
        $form->display('created_at', 'Created at');
        $form->display('updated_at', 'Updated at');

        return $form;
    }
}
