<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->engine = "InnoDB";
            $table->increments('id');
            $table->string('std_fname');
            $table->string('std_lname');
            $table->string('std_mail');
            $table->string('std_age');
            $table->string('std_add');
            $table->string('mnth_fees');
            $table->string('std_subject');
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
        Schema::dropIfExists('students');
    }
}
