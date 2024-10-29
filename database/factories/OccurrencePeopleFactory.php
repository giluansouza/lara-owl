<?php

namespace Database\Factories;

use App\Models\Occurrence;
use App\Models\People;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class OccurrencePeopleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'occurrence_id' => $this->faker->numberBetween(1, 10),
            'people_id' => $this->faker->numberBetween(1, 15),
        ];
    }
}
