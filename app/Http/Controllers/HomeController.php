<?php

namespace App\Http\Controllers;

use App\Models\Company;
use App\Models\Employee;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }
    public function companies()
    {

        $all_companies = Company::paginate(10);
        return view('pages.companies.add_companies', compact('all_companies'));
    }
    public function employees()
    {

        $all_employees = Employee::paginate(10);
        $all_companies = Company::all();
        return view('pages.employees.add_employees', compact(['all_employees', 'all_companies']));
    }
}