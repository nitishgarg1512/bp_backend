<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePitchesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pitches', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('format')->comment('5: 5aside, 7: 7aside, 11: 11aside');
            $table->integer('surface_type')->comment('1: 3g, 2: 4g, 3: Astro, 4: Grass, 5: Indoor');
            $table->integer('created_by')->index();
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
        Schema::dropIfExists('pitches');
    }
}
