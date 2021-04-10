<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::resource('/classes','classController');
Route::get('/addClass','classController@showForm');

Route::get('/addStd','studentController@showForm');
Route::resource('/std','studentController');
Route::get('/AddAdmission', 'studentController@showadd');
Route::get('/ViewAddmission', 'studentController@viewadd');
Route::get('/add_admi', 'studentController@addfee');
Route::get('/AddAdmission', 'studentController@showclass');

Route::get('/ViewAddmission', 'studentController@viewclass');
Route::get('/up', 'studentController@updatefees');
Route::get('/updfee', 'studentController@upddd');

Route::get('/search4','studentController@teacher_search2');
Route::get('/search5','studentController@teacher_search3');

Auth::routes();

Route::get('/', 'HomeController@index');
