<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use TCG\Voyager\Traits\Translatable;

/**
 * @method static slug(string $string)
 * @method static active()
 * @method static key(string $string)
 * @method static select(array $array)
 */
class Page extends Model
{
    use Translatable, SoftDeletes;

    protected $translatable = ['title', 'body', 'meta_description', 'meta_keywords'];

    public const STATUS_ACTIVE = 'ACTIVE';
    public const STATUS_INACTIVE = 'INACTIVE';
    public static $statuses = [self::STATUS_ACTIVE, self::STATUS_INACTIVE];

    public function scopeActive($query)
    {
        return $query->where('status', static::STATUS_ACTIVE);
    }

    public function scopeKey($query, $key)
    {
        return $query->active()->where('key', $key);
    }

    public function hideFields(): array
    {
        return array(
//                'homepage'   => ['key', 'meta_keywords'],

            )
            [$this->key] ?? [];
    }

    public function setKeyAttribute($value) {
        if ( empty($value) ) {
            $this->attributes['key'] = NULL;
        } else {
            $this->attributes['key'] = $value;
        }
    }
}
