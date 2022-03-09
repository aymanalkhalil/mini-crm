@extends('layouts.app')

@section('content')
    <style>
        #companies_filter {
            text-align: left
        }


        .dt-buttons .dt-button {
            background-color: #5cb85c;
            color: #fff;
            border-color: #4cae4c;
            width: 70px;
            height: 30px;
            border-radius: 50px;
        }

    </style>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    @include('layouts.error')

                    <div class="card-header">Add Employees</div>

                    <div class="card-body">
                        <form action="{{ route('add_employees') }}" method="post" enctype="multipart/form-data">
                            @csrf

                            <div class="form-group">
                                <label for="">First Name</label>
                                <input type="text" name="firstname" class="form-control" id="">
                            </div>
                            <div class="form-group">
                                <label for="">Last Name</label>
                                <input type="text" name="lastname" class="form-control" id="">
                            </div>
                            <div class="form-group">
                                <label for="">Company</label>

                                <select name="company" class="js-example-basic-multiple form-control ">
                                    <option value="" disabled selected>please choose company</option>
                                    @foreach ($all_companies as $item)
                                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="">Email</label>
                                <input type="email" name="email" class="form-control" id="">
                            </div>
                            <div class="form-group">
                                <label for="">Phone</label>
                                <input type="text" name="phone" class="form-control" id="">
                            </div>
                            <br>
                            <div class="form-group">
                                <button type="submit" class="form-control btn btn-success" id="">Add
                                    Employee</button>
                            </div>



                        </form>

                        {{-- @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif
                        {{ __('You are logged in!') }} --}}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header"> Employees List</div>

                    <div class="card-body">
                        <table class="table table-hover " id="employees">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">First Name</th>
                                    <th scope="col">Last Name</th>
                                    <th scope="col">Company</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Phone</th>
                                    <th scope="col">Options</th>
                                </tr>
                            </thead>
                            <tbody>
                                @if ('all_employees')
                                    @php
                                        $i = 1;
                                    @endphp
                                    @foreach ($all_employees as $employee)
                                        <tr>
                                            <th scope="row">{{ $i }}</th>
                                            <td>{{ $employee->first_name }}</td>
                                            <td>{{ $employee->last_name }}</td>
                                            <td>{{ $employee->company->name }}</td>
                                            <td>{{ $employee->email }}</td>
                                            <td>{{ $employee->phone }}</td>

                                            <td>
                                                <a href="{{ route('edit_employees', $employee->id) }}"
                                                    class="btn btn-warning">Edit</a>
                                                <a href="{{ route('delete_employees', $employee->id) }}"
                                                    class="btn btn-danger"
                                                    onclick="return confirm(' Are you sure you want to delete{{ $employee->first_name . ' ' . $employee->last_name }} from the database ? ')">
                                                    Delete</a>

                                            </td>
                                            @php
                                                $i++;
                                            @endphp
                                    @endforeach
                                @endif
                            </tbody>


                        </table>

                        </form>
                        <div class="d-flex justify-content-end">

                            {{ $all_employees->links('pagination::bootstrap-4') }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>

<script src="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css"></script>
<script src="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css"></script>
<script>
    $(document).ready(function() {
        $('#employees').DataTable({
            dom: "Blfrtip",
            "bPaginate": false,
            buttons: [{
                    text: 'excel',
                    extend: 'excelHtml5',
                },
                {
                    text: 'pdf',
                    extend: 'pdfHtml5',
                },

            ],
            columnDefs: [{
                orderable: false,
                targets: -1
            }]
        });
    });
</script>
