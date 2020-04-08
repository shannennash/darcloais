<?php

Route::redirect('/', '/login');

Route::redirect('/home', '/admin');

Auth::routes();

Route::group(['prefix' => 'admin', 'as' => 'admin.', 'namespace' => 'Admin', 'middleware' => ['auth']], function () {
    Route::get('/', 'HomeController@index')->name('home');

    Route::delete('permissions/destroy', 'PermissionsController@massDestroy')->name('permissions.massDestroy');

    Route::resource('permissions', 'PermissionsController');

    Route::delete('roles/destroy', 'RolesController@massDestroy')->name('roles.massDestroy');

    Route::resource('roles', 'RolesController');

    Route::delete('cloas/destroy', 'CloasController@massDestroy')->name('cloas.massDestroy');

    Route::resource('cloas', 'CloasController');

    Route::delete('ldiss/destroy', 'LdissController@massDestroy')->name('ldiss.massDestroy');

    Route::resource('ldiss', 'LdissController');

    Route::delete('predictions/destroy', 'PredictionsController@massDestroy')->name('predictions.massDestroy');

    Route::resource('predictions', 'PredictionsController');

    Route::delete('users/destroy', 'UsersController@massDestroy')->name('users.massDestroy');

    Route::resource('users', 'UsersController');
});
