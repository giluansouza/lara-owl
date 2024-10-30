<?php

namespace Database\Seeders;

use App\Models\Polygon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PolygonSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Polygon::factory()->create();
    }
}
