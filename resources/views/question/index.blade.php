@extends('layouts.app')

@section('content')
    <div class="container col-md-8">
        @if (Session::has('done'))
            <div class="alert alert-info col-12">
                <h2 class="text-center"> {{ Session::get('done') }} </h2>
            </div>
        @endif
        <h1 class="bgen text-center text-primary"> List All Questions </h1>

        <div class="card">
            <input id="search" type="text" class="form-control" placeholder="Search..">
            <div class="card-body">
                <table id="searchTable" class="table ">
                    <tr>
                        <th>ID</th>
                        <th> Question </th>
                        <th> Student ID </th>
                        <th> Answer </th>
                        <th colspan="3"> Action </th>
                    </tr>
                    @foreach ($questions as $item)
                        <tr>
                            <td> {{ $item->id }} </td>
                            <td> {{ $item->question }} </td>
                            <td> {{ $item->student_id }} </td>
                            <td> {{ $item->answer }} </td>
                            <td><a href="{{ route('question.edit', $item->id) }}"><i class="far fa-edit"
                                        style="color:rgb(60, 109, 241);  font-size: 30px;"></i></a> </td>
                            <td> <a href="{{ route('question.makePublic',  $item->id) }}">
                                    <i class="fas fa-share" style="color:rgb(60, 109, 241); font-size: 30px;"></i>
                                </a> </td>
                                <td> <a onclick="return confirm('Are You Sure ?')"
                                    href="{{ route('question.destroy', $item->id) }}"><i class="fas fa-trash-alt"
                                        style="color:rgb(185, 66, 66); font-size: 30px;"></i></a> </td>
                        </tr>
                    @endforeach
                </table>
            </div>
        </div>
    </div>

@endsection
