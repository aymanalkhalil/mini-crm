@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Edit Companies</div>
                    @include('layouts.error')

                    <div class="card-body">
                        <form action="{{ route('update_companies', $find_company->id) }}" method="post"
                            enctype="multipart/form-data">
                            @csrf
                            @method("PUT")

                            <input type="hidden" name="id" value="{{ $find_company->id }}">

                            <div class="form-group">
                                <label for="">Company Name</label>
                                <input type="text" name="name" value="{{ $find_company->name }}" class="form-control"
                                    id="">
                            </div>
                            <div class="form-group">
                                <label for="">Email</label>
                                <input type="text" name="email" value="{{ $find_company->email }}" class="form-control"
                                    id="">
                            </div>
                            <div class="form-group">
                                <label for="">Logo</label>
                                <input type="file" name="logo" class="form-control" id="">
                            </div>
                            <div class="form-group">
                                <label for="">Old logo</label>

                                <img src="{{ asset('storage/company_logo/' . $find_company->logo) }}" width="250">
                            </div>
                            <br>
                            <div class="form-group">
                                <button type="submit" class="form-control btn btn-success" id="">Update
                                    Company</button>
                            </div>



                        </form>


                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
