<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Orcrim>
 */
class OrcrimFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'orcrim_name' => $this->faker->lexify('???'),
            'city_id' => $this->faker->numberBetween(1, 4),
        ];
    }
}
