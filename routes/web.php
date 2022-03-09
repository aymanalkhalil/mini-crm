<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\EmployeeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');
Route::get('/companies', [HomeController::class, 'companies'])->name('companies');
Route::get('/employees', [HomeController::class, 'employees'])->name('employees');

Route::post(
    '/companies',
    [CompanyController::class, 'store']
)->name('add_companies');

Route::post(
    '/employees',
    [EmployeeController::class, 'store']
)->name('add_employees');

Route::get(
    '/edit_companies/{id}',
    [CompanyController::class, 'edit']
)->name('edit_companies');

Route::put(
    '/update_companies/{id}',
    [CompanyController::class, 'update']
)->name('update_companies');

Route::get(
    '/delete_companies/{id}',
    [CompanyController::class, 'destroy']
)->name('delete_companies');

Route::get(
    '/edit_employees/{id}',
    [EmployeeController::class, 'edit']
)->name('edit_employees');

Route::put(
    '/update_employees/{id}',
    [EmployeeController::class, 'update']
)->name('update_employees');

Route::get(
    '/delete_employees/{id}',
    [EmployeeController::class, 'destroy']
)->name('delete_employees');