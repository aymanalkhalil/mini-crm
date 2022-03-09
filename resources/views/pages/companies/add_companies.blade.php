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
                    <div class="card-header">Add Companies</div>

                    <div class="card-body">
                        <form action="{{ route('add_companies') }}" method="post" enctype="multipart/form-data">
                            @csrf

                            <div class="form-group">
                                <label for="">Company Name</label>
                                <input type="text" name="name" class="form-control" id="">
                            </div>
                            <div class="form-group">
                                <label for="">Email</label>
                                <input type="text" name="email" class="form-control" id="">
                            </div>
                            <div class="form-group">
                                <label for="">Logo</label>
                                <input type="file" name="logo" class="form-control" id="">
                            </div>
                            <br>
                            <div class="form-group">
                                <button type="submit" class="form-control btn btn-success" id="">Add
                                    Company</button>
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
                    <div class="card-header"> Companies List</div>

                    <div class="card-body">
                        <form action="{{ route('add_companies') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            <table class="table table-hover" id='companies'>
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Company Name</th>
                                        <th>Company Email</th>
                                        <th>Logo</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if ('all_companies')
                                        @php
                                            $i = 1;
                                        @endphp
                                        @foreach ($all_companies as $company)
                                            <tr>
                                                <td>{{ $i }}</td>
                                                <td>{{ $company->name }}</td>
                                                <td>{{ $company->email }}</td>
                                                <td> <img src="{{ asset('storage/company_logo/' . $company->logo) }}"
                                                        width="150">
                                                </td>
                                                <td>
                                                    <a href="{{ route('edit_companies', $company->id) }}"
                                                        class="btn btn-warning">Edit</a>
                                                </td>
                                                <td>
                                                    <a href="{{ route('delete_companies', $company->id) }}"
                                                        class="btn btn-danger"
                                                        onclick="return confirm(' Are you sure you want to delete  {{ $company->name }} from the database ? ')">
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

                            {{ $all_companies->links('pagination::bootstrap-4') }}
                        </div>
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
@endsection
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>

<script src="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css"></script>
<script src="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css"></script>
<script>
    $(document).ready(function() {
        $('#companies').DataTable({
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
