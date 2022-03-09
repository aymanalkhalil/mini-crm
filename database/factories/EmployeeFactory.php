<?php

namespace Database\Factories;

use App\Models\Company;
use App\Models\Employee;
use Illuminate\Database\Eloquent\Factories\Factory;

class EmployeeFactory extends Factory
{

    protected $model = Employee::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'first_name' => $this->faker->firstName,
            'last_name' => $this->faker->unique()->lastName,
            'company_id' => Company::all()->random()->id,
            'email' => $this->faker->unique()->email,
            'phone' => $this->faker->numerify('##########'),

        ];
    }
}