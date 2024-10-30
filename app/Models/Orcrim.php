<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Orcrim extends Model
{
    use HasFactory;

    protected $fillable = [
        'orcrim_name',
        'city_id',
    ];

    public function city()
    {
        return $this->belongsTo(City::class);
    }

    public function people()
    {
        return $this->hasMany(People::class, 'orcrim_id');
    }

    public function occurrences()
    {
        return $this->hasMany(Occurrence::class, 'orcrim_id');
    }

    public function polygon()
    {
        return $this->hasMany(Polygon::class, 'orcrim_id');
    }
}
