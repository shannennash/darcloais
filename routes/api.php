<?php

Route::group(['prefix' => 'v1', 'as' => 'admin.', 'namespace' => 'Api\V1\Admin'], function () {
    Route::apiResource('permissions', 'PermissionsApiController');

    Route::apiResource('roles', 'RolesApiController');

    Route::apiResource('cloas', 'CloasApiController');

    Route::apiResource('ldiss', 'LdissApiController');

    Route::apiResource('predictions', 'PredictionsApiController');

    Route::apiResource('users', 'UsersApiController');
});
