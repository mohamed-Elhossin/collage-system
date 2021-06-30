@extends('layouts.app')

@section('content')
    <div class="container col-md-8">
        <h1 class="bgen text-center text-primary"> Add New Post </h1>
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
                <form action="{{ route('news.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label for="">Post Descripation (*Must) </label>
                        <textarea name="post" type="text" class="form-control">
                            </textarea>
                    </div>
                    <div class="form-group">
                        <label for="">Post Image (Optional) </label>
                        <input type="file" name="postImage" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="">Post PDF (Optional)  </label>
                        <input type="file" name="postPdf" class="form-control">
                    </div>
                    <button class="btn btn-primary btn-block">
                        Send Post
                    </button>
                </form>
            </div>
        </div>
    </div>
@endsection
