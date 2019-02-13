<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLeagueTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('league', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('max_teams');
            $table->integer('min_teams');
            $table->integer('format');
            $table->integer('type');
            $table->date('start_date');
            $table->date('close_date');
            $table->boolean('set_close_date');
            $table->integer('challenge_level');
            $table->integer('venue_affiliation')->index();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('league');
    }
}
