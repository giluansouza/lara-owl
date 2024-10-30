<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
    ];

    public function orcrims()
    {
        return $this->hasMany(Orcrim::class);
    }

    public function occurrences()
    {
        return $this->hasMany(Occurrence::class, 'cities_id');
    }
}
