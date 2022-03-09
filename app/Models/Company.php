<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;


    protected $fillable = ['name', 'email', 'logo'];

    public function company()
    {
        return $this->hasMany(Employee::class);
    }
}