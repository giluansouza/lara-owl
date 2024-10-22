<?php

namespace Database\Factories;

use App\Models\Organization;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Occurrence>
 */
class OccurrenceFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'description' => $this->faker->paragraph,
            'latitude' => $this->faker->latitude,
            'longitude' => $this->faker->longitude,
            'occurred_at' => $this->faker->dateTime,
            'organization_id' => Organization::factory(),
        ];
    }
}
