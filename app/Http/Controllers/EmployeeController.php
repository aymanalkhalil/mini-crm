<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use App\Models\Company;
use Illuminate\Http\Request;
use App\Http\Requests\EmployeeRequest;

class EmployeeController extends Controller
{

    public function index()
    {
        //
    }

    public function store(EmployeeRequest $request)
    {

        $save_employee = Employee::create([
            'first_name' => $request->firstname,
            'last_name' => $request->lastname,
            'company_id' => $request->company,
            'email' => $request->email,
            'phone' => $request->phone
        ]);
        if ($save_employee) {
            return redirect()->back()->with('success', 'Employee Added Successfully');
        } else {
            return redirect()->back()->with('error', 'An Error Has occurred please try again later ');
        }
    }


    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $employee = Employee::find($id);
        $all_companies = Company::all();
        return view('pages.employees.edit_employees', compact('employee', 'all_companies'));
    }


    public function update(EmployeeRequest $request, $id)
    {
        $update_employee = Employee::where('id', $id)->update([
            'first_name' => $request->firstname,
            'last_name' => $request->lastname,
            'company_id' => $request->company,
            'email' => $request->email,
            'phone' => $request->phone
        ]);
        if ($update_employee) {
            return redirect()->route('add_employees')->with('success', 'Employee data Updated Successfully');
        } else {
            return redirect()->back()->with('error', 'An Error Has occurred please try again later ');
        }
    }


    public function destroy(Employee $id)
    {
        if ($id->delete()) {
            return redirect()->back()->with('success', 'Employee data deleted Successfully');
        } else {
            return redirect()->back()->with('error', 'An Error Has occurred please try again later ');
        }
    }
}