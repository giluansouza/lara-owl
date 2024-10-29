<?php

namespace Database\Seeders;

use App\Models\City;
use App\Models\Occurrence;
use App\Models\OccurrencePeople;
use App\Models\Orcrim;
use App\Models\People;
use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        City::factory(4)->create();

        Orcrim::factory(5)->create();

        People::factory(15)->create();

        Occurrence::factory(10)->create();

        OccurrencePeople::factory(10)->create();
    }
}
