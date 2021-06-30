@extends('layouts.app')

@section('content')
    <div class="container col-md-8">
        <h1 class="bgen text-center text-primary"> Update Post : {{ $news->id }} </h1>
        <div class="card">
            <div class="card-body">
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                <form action="{{ route('news.update', $news->id) }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label for="">Post Descripation (*Must) </label>
                        <textarea name="post" type="text" class="form-control">
                               {{ $news->news }}
                            </textarea>
                    </div>
                
                    <button type="submit" class="btn btn-warning w-50 m-auto btn-block">
                        Update Post
                    </button>
                </form>
            </div>
        </div>
    </div>
@endsection
