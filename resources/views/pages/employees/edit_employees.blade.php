@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Edit Employees</div>
                    @include('layouts.error')

                    <div class="card-body">
                        <form action="{{ route('update_employees', $employee->id) }}" method="post"
                            enctype="multipart/form-data">
                            @csrf
                            @method("PUT")

                            <input type="hidden" name="id" value="{{ $employee->id }}">

                            <div class="form-group">
                                <label for="">First Name</label>
                                <input type="text" name="firstname" value="{{ $employee->first_name }}"
                                    class="form-control" id="">
                            </div>
                            <div class="form-group">
                                <label for="">Last Name</label>
                                <input type="text" name="lastname" value="{{ $employee->last_name }}"
                                    class="form-control" id="">
                            </div>
                            <div class="form-group">
                                <label for="">Company</label>

                                <select name="company" class="js-example-basic-multiple form-control ">
                                    <option value="" disabled selected>please choose company</option>
                                    @foreach ($all_companies as $item)
                                        <option @if ($item->id == $employee->company_id) {{ 'selected' }} @endif
                                            value="{{ $item->id }}">{{ $item->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="">Email</label>
                                <input type="email" name="email" value="{{ $employee->email }}" class="form-control"
                                    id="">
                            </div>
                            <div class="form-group">
                                <label for="">Phone</label>
                                <input type="text" name="phone" value="{{ $employee->phone }}" class="form-control"
                                    id="">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="form-control btn btn-success" id="">Update
                                    Employee</button>
                            </div>



                        </form>


                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
