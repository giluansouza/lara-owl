<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Occurrence extends Model
{
    use HasFactory;

    public function people()
    {
        return $this->belongsToMany(People::class, 'occurrence_people');
    }

    public function organization()
    {
        return $this->belongsTo(Organization::class);
    }
}
