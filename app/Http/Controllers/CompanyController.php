<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\CompanyRequest;
use App\Models\Company;

class CompanyController extends Controller
{
    public function store(CompanyRequest $request)
    {
        $name = $request->file('logo')->getClientOriginalName();
        $request->file('logo')->storeAs('public/company_logo/', $name);

        $save_company = Company::create([
            'name' => $request->name,
            'email' => $request->email,
            'logo' => $name,
        ]);
        if ($save_company) {
            return redirect()->back()->with('success', 'Company Added Successfully');
        } else {
            return redirect()->back()->with('error', 'An Error Has occurred please try again later ');
        }
    }
    public function edit($id)
    {

        $find_company = Company::find($id);

        return view('pages.companies.edit_companies', compact('find_company'));
    }
    public function update(CompanyRequest $request, $id)
    {
        $update_company = Company::where('id', $id)->update([
            'name' => $request->name,
            'email' => $request->email,
        ]);

        if ($request->hasFile('logo')) {
            $name = $request->file('logo')->getClientOriginalName();
            $request->file('logo')->storeAs('public/company_logo/', $name);
            Company::where('id', $id)->update([
                'logo' => $name,
            ]);
        }
        if ($update_company) {
            return redirect()->route('add_companies')->with('success', 'Company data Updated Successfully');
        } else {
            return redirect()->back()->with('error', 'An Error Has occurred please try again later ');
        }
    }
    public function destroy(Company $id)
    {

        if ($id->delete()) {
            return redirect()->back()->with('success', 'Company data deleted Successfully');
        } else {
            return redirect()->back()->with('error', 'An Error Has occurred please try again later ');
        }
    }
}