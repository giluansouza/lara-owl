<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class People extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'cpf',
        'image',
        'organization_id',
    ];

    public function organization()
    {
        return $this->belongsTo(Organization::class);
    }

    public function occurrences()
    {
        return $this->belongsToMany(Occurrence::class, 'occurrence_people');
    }

    public function relationships()
    {
        return $this->belongsToMany(People::class, 'relationships', 'people_id', 'related_people_id');
    }
}
