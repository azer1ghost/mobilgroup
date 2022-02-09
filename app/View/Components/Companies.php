<?php

namespace App\View\Components;

use Illuminate\View\Component;
use Cache;
use App\Models\Company;

class Companies extends Component
{
    public $companies;

    public function __construct()
    {
        $this->companies = Cache::remember("company", config('cache.timeout'), function (){
            return Company::active()->orderBy('ordering')->get();
        });
    }

    public function render()
    {
        return view('components.companies');
    }
}
