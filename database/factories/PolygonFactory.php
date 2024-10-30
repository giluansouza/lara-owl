<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class PolygonFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $coordinates = [
            [-9.449348, -40.500443],
            [-9.443695, -40.501225],
            [-9.441113, -40.498331],
            [-9.446981, -40.495564],
            [-9.449348, -40.500443]
        ];

        // Convert coordinates to WKT (Well-Known Text) format
        $polygonWKT = 'POLYGON((' . implode(', ', array_map(function ($point) {
            return implode(' ', $point);
        }, $coordinates)) . '))';

        return [
            'area' => DB::raw("ST_GeomFromText('$polygonWKT')"),
            'orcrim_id' => $this->faker->numberBetween(1, 8),
        ];
    }
}
