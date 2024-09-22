<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\DB; 
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;


class MoviesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        for ($i = 0; $i < 10; $i++) {
            DB::table('movies')->insert([
                'title' => $faker->sentence,
                'synopsis' => $faker->paragraph,
                'year' => $faker->year(), 
                'cover' => $faker->imageUrl(), // URL de imagen de ejemplo
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
