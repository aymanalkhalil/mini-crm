<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        //Create User using seeds
        User::Create([
            'name' => "admin",
            'email' => "admin@admin.com",
            'password' => Hash::make('password'),
        ]);
    }
}