@extends('layouts.app')


@section('content')
@if (Auth::user()->role == 1 )
    <div class="container col-8">
        @if (Session::has('done'))
            <div class="alert alert-info col-12">
                <h2 class="text-center"> {{ Session::get('done') }} </h2>
            </div>
        @endif
        <h1  class="bgen text-center text-primary"> List All Admins </h1>
        <div class="card">
            <input id="search" type="text" class="form-control" placeholder="Search..">
            <div class="card-body">
                <table id="searchTable" class="table ">
                    <tr>
                        <th>ID</th>
                        <th> Name </th>
                        <th> Role </th>
                        <th> Action </th>
                    </tr>
                    @foreach ($users as $user)
                        <tr>
                            <td> {{ $user->id }} </td>
                            <td> {{ $user->name }} </td>
                            @if ($user->role == 1)
                                <td> All Access </td>
                            @elseif ($user->role == 2)
                                <td> sami Access </td>
                            @endif
                            <td> <a onclick="return confirm('Are You Sure ?')"
                                href="{{ route('admin.destroy',  $user->id) }}"><i class="fas fa-trash-alt" style="color:rgb(185, 66, 66); font-size: 30px;"></i></a> </td>
                        </tr>
                    @endforeach
                </table>
            </div>
        </div>
    </div>
    @else
<div class="m-auto col-md-6">
<img src="{{ asset('img/not.jpg') }}" class="img-fluid" alt="">
</div>
@endif
@endsection
