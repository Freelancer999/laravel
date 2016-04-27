<?php

/*
|--------------------------------------------------------------------------
| Routes File
|--------------------------------------------------------------------------
|
| Here is where you will register all of the routes in an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|

Route::get('/', function () {
    return view('welcome');
});

*/



/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/

Route::group(['middleware' => ['web']], function () {
    // your routes here
	// Authentication routes...
	//Route::get('/login', 'Auth\AuthController@getLogin');
	//Route::post('/login', 'Auth\AuthController@postLogin');
	Route::get('/logout', 'Auth\AuthController@getLogout');
	Route::any('/login', 'Auth\AuthController@Login');
	// Registration routes...
	//Route::get('/register', 'Auth\AuthController@getRegister');
	Route::any('/register', 'Auth\AuthController@Register');

	Route::get('/', 'HomeController@index');
	Route::get('/buyer/panel', 'buyer\BuyerController@index');
	Route::get('/show', 'HomeController@show');
});

Route::group(['middleware' => 'web'], function () {
    Route::auth();
});
