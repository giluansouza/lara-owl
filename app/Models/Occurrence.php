<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Occurrence extends Model
{
    use HasFactory;

    public function people()
    {
        return $this->belongsToMany(People::class, 'occurrence_people', 'occurrence_id', 'people_id');
    }

    public function orcrim()
    {
        return $this->belongsTo(Orcrim::class, 'orcrim_id');
    }

    public function city()
    {
        return $this->belongsTo(City::class, 'city_id');
    }
}
