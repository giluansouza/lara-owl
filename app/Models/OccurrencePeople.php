<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OccurrencePeople extends Model
{
    use HasFactory;

    protected $fillable = [
        'occurrence_id',
        'people_id',
    ];

    // Definindo relacionamentos, se necessário
    public function occurrence()
    {
        return $this->belongsTo(Occurrence::class);
    }

    public function people()
    {
        return $this->belongsTo(People::class);
    }
}
