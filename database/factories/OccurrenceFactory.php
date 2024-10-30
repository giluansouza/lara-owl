<?php

namespace Database\Factories;

use App\Models\Orcrim;
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
            'orcrim_id' => $this->faker->numberBetween(1, 8),
            'city_id' => $this->faker->numberBetween(1, 10),
            'type' => $this->faker->randomElement(['Assalto', 'Roubo', 'Furto', 'Homicídio', 'Vandalismo', 'Outros']),
            'opm' => $this->faker->word,
        ];
    }
}
