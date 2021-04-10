<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ClassInStudent extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
                Schema::table('students', function (Blueprint $table) {
            $table->integer('cls_id')->unsigned();
            $table->foreign('cls_id')->references('id')->on('classes');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
        $table->dropColumn('cls_id');
    }
}
