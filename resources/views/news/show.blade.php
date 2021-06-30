@extends('layouts.app')

@section('content')
    <div class="container col-md-8">
        <h1 class="bgen text-center text-primary">Show Post : {{ $news->id }} </h1>
        <div class="card">
            <div class="card-body">
                <div class="media">
                    <img width="80" src="{{ asset('uploads/newsImg') . "/$news->image" }}" class="align-self-start mr-3"
                        alt="...">
                    <div class="media-body">
                        <h3> {{ $news->news }} </h3>
                        <h3 style="color: blue"> {{ $news->pdf }} </h3>
                        <button class="btn btn-primary"> Download</button>
                        <a href="{{ route('news.edit', $news->id) }}"  class="btn">   <i class="far fa-edit"
                            style="color:rgb(60, 109, 241);  font-size: 30px;"></i></a>
                        <a href="{{ route('news.destroy', $news->id) }}" class="btn" > <i
                            class="fas fa-trash-alt" style="color:rgb(185, 66, 66); font-size: 30px;"></i></a>
                    </div>
                </div>

            </div>


        </div>
    </div>
@endsection
