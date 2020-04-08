<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Gate;
use App\Role;
use Auth;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);
        $this->app->alias('bugsnag.logger', \Illuminate\Contracts\Logging\Log::class);
        $this->app->alias('bugsnag.logger', \Psr\Log\LoggerInterface::class);

        view()->composer('*', function($view)
        {
            $view_name = str_replace('.', '-', $view->getName());
                         view()->share('view_name', $view_name);
            $logged_user = \Auth::user();

            if (Auth::check()) {
                $logged_role = $logged_user->roles->pluck('id')->first();
                $data = [
                    'id'    => $logged_user->id,
                    'name'  => $logged_user->name,
                    'role'  => $logged_role
                ];
                $view->with('data',$data);
            } else {
                $view->with('logged_user', null);
            }
        });
    }
}
