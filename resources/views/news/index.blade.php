@extends('layouts.app')

@section('content')
    <div class="container col-md-8">
        @if (Session::has('done'))
            <div class="alert alert-info col-12">
                <h2 class="text-center"> {{ Session::get('done') }} </h2>
            </div>
        @endif
        <h1 class="bgen text-center text-primary"> List All News </h1>

        <div class="card">
            <input id="search" type="text" class="form-control" placeholder="Search..">

            <div class="card-body">
                <table id="searchTable" class="table ">
                    <tr>
                        <th>ID</th>
                        <th> Post </th>
                        <th colspan="2"> Action </th>
                    </tr>
                    @foreach ($news as $item)
                        <tr>
                            <td>{{ $item->id }}</td>
                            <td>{{ $item->news }}</td>
                            <td>
                                <a href="{{ route('news.show', $item->id) }}"> <i class="fas fa-eye"
                                        style="color:rgb(75, 162, 177); font-size: 30px;"></i>
                                </a>
                            </td>
                            <td> <a href="{{ route('news.destroy', $item->id) }}" > <i
                                        class="fas fa-trash-alt" style="color:rgb(185, 66, 66); font-size: 30px;"></i></a>
                            </td>
                        </tr>
                    @endforeach


                </table>
            </div>
        </div>
    </div>

@endsection
