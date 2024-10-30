<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\People>
 */
class PeopleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => $this->faker->name,
            'cpf' => $this->faker->cpf(),
            'rg' => $this->faker->rg(),
            'birthDate' => $this->faker->date,
            'gender' => $this->faker->randomElement(['Masculino', 'Feminino']),
            'father' => $this->faker->name,
            'mother' => $this->faker->name,
            'profession' => $this->faker->word,
            'color' => $this->faker->colorName,
            'nicknames' => $this->faker->words(1, true),
            'crimeGroup' => $this->faker->word,
            'function' => $this->faker->word,
            'priority' => $this->faker->word,
            'hasCriminalRecords' => $this->faker->boolean,
            'recordDescription' => $this->faker->sentence,
            'workArea' => $this->faker->word,
            'orcrim_id' => $this->faker->numberBetween(1, 10),
            'city_id' => $this->faker->numberBetween(1, 8),
        ];
    }
}
