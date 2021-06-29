@extends('layouts.app')

@section('content')
    <div class="container col-md-6">
        @if (Session::has('done'))
        <div class="alert alert-info col-12">
            <h2 class="text-center"> {{ Session::get('done') }} </h2>
        </div>
    @endif
        <div class="card">
            <h1 class="bgen text-center text-primary"> Answer Question : {{ $question->id }} </h1>
            <div class="card-body">
                <form action="{{ route('question.update', $question->id) }}" method="POST">
                    @csrf
                    <input type="hidden" value="{{ $question->question }}"  name="question">
                    <input type="hidden" value="{{ $question->student_id }}"  name="student_id">
                    <div class="form-group">
                        <textarea type="text" name="answer" class="form-control">
                            </textarea>
                    </div>
                    <button  type="submit" class="btn w-50 m-auto btn-primary btn-block"> Send Answer </button>
                </form>
            </div>
        </div>
    </div>
@endsection
