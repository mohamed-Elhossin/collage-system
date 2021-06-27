@extends('layouts.app')

@section('content')
    <div class="container col-md-8">
        @if (Session::has('done'))
            <div class="alert alert-info col-12">
                <h2 class="text-center"> {{ Session::get('done') }} </h2>
            </div>
        @endif
        <h1  class="bgen text-center text-primary"> List All Student </h1>

        <div class="card">
            <input id="search" type="text" class="form-control" placeholder="Search..">

            <div class="card-body">
                <table id="searchTable" class="table ">
                    <tr>
                        <th>ID</th>
                        <th> Name </th>
                        <th colspan="2"> Action </th>
                    </tr>
        

                </table>
            </div>
        </div>
    </div>

@endsection
