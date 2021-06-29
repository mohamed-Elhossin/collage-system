<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});
// Admin Routes
Auth::routes();
Route::get('/admins','AdminController@index')->name('admins');
Route::get('/admin/delete/{id}','AdminController@destroy')->name('admin.destroy');
#######################################
// Students Routes
Route::get('/students', 'StudentController@index')->name('students');
Route::get('/student/delete/{id}', 'StudentController@destroy')->name('student.destroy');
Route::get('/student/show/{id}', 'StudentController@show')->name('student.show');
#######################################
// Programs Routes
Route::get('/programs','ProgramController@index')->name('programs');
#######################################
// Questions Routes
Route::get('/questions','QuestionController@index')->name('questions');
Route::get('/question/edit/{id}','QuestionController@edit')->name('question.edit');
Route::post('/question/update/{id}','QuestionController@update')->name('question.update');
Route::get('/question/public','QuestionController@public')->name('question.public');
Route::get('/question/makePublic/{id}','QuestionController@makePublic')->name('question.makePublic');
Route::get('/question/delete/{id}','QuestionController@destroy')->name('question.destroy');


Route::get('/home', 'HomeController@index')->name('home');
Route::post('/theem/dark/{id}', 'AdminController@darkmood')->name('darkmood');
