<?php

use Illuminate\Support\Facades\Route;
use App\Http\Middleware\Localization;
use TCG\Voyager\Voyager;

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

Route::view('/', 'index')->name('index')->middleware('localization');


Localization::route();

Route::withoutMiddleware('localization')
    ->prefix('admin')
    ->group(function () {
        (new Voyager)->routes();
    });
