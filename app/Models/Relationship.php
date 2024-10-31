<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Relationship extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'related_user_id',
    ];

    // Define a relação com o modelo User
    public function people()
    {
        return $this->belongsTo(User::class);
    }

    // Define a relação com o modelo User para o usuário relacionado
    public function relatedPeople()
    {
        return $this->belongsTo(User::class, 'related_people_id');
    }
}
