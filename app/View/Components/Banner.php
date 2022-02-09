<?php

namespace App\View\Components;

use App\Models\Slider;
use Cache;
use Illuminate\View\Component;

class Banner extends Component
{
    public $sliders;
    public $meta;

    public function __construct()
    {
        $this->meta = meta('banner',[ 'body']);
        $this->sliders = Cache::remember("slider", config('cache.timeout'), function (){
            return Slider::active()->orderBy('ordering')->get();
        });
    }


    public function render()
    {
        return view('components.banner');
    }
}
