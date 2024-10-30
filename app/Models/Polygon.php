<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Polygon extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'area',
        'orcrim_id',
    ];

    public function orcrim()
    {
        return $this->belongsTo(Orcrim::class);
    }
}
