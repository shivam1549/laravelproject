<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckBlockedMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {

        if(Auth::check()){
            // 0 - User Active , 1 - User Blocked
            if(Auth::user()->status == '0'){
                return $next($request);
            }
            else{
               Auth::logout();
               return redirect('/login')->with('status', 'You are blocked! Please Contact to the admin');
            }
        }
        else{
            return redirect('/login')->with('status', 'Please Login');
        }
    }
}
