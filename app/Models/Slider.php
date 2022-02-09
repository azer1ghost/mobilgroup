<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Cache;

class Slider extends Model
{
    use SoftDeletes;

    public function scopeActive($query)
    {
        return $query->where('status', true);
    }

    public static function boot()
    {
        parent::boot();
        static::saved(function () {
            Cache::forget('slider');
        });
    }
}
