@extends('layouts.app')
<style>
    .title{
        font-weight: bold;
        color: rgb(79, 148, 226)
    }
    .title::after{
        content: " - :"
    }
    .title::before{
        content: "- "
    }  
</style>
@section('content')
    <div class="container col-md-10">
        <h1 class="bgen text-center text-primary"> Student ID : {{$student->id}} </h1>
        <div class="media">
         <img src="63346499.png" class="mr-3" alt="...">
            {{-- <img src="{{$student->image}}" class="mr-3" alt="..."> --}}
            <div class="media-body">
                <h5 class="mt-0">{{$student->Name_eng}}</h5>
      <table class="table">
          <tr>
              <th>Title</th>
              <th>Value</th>
              <th>Title</th>
              <th>Value</th>
          </tr>
          <tr>
              <td class="title">Name_ar</td>
              <td>{{$student->Name_ar}}</td>
              <td class="title">SchoolName</td>
              <td>{{$student->SchoolName}}</td>
          </tr>
          <tr>
              <td class="title">Name_eng</td>
              <td>{{$student->Name_eng}}</td>
              <td class="title">StudentPhone</td>
              <td>{{$student->StudentPhone}}</td>
          </tr>
          <tr>
              <td class="title">Social_ID</td>
              <td>{{$student->Social_ID}}</td>
              <td class="title">address</td>
              <td>{{$student->address}}</td>
          </tr>
          <tr>
              <td class="title">Gender</td>
              <td>{{$student->Gender}}</td>
              <td class="title">region</td>
              <td>{{$student->region}}</td>
          </tr>
          <tr>
              <td class="title">Shoapa</td>
              <td>{{$student->Shoapa}}</td>
              <td class="title">mail</td>
              <td>{{$student->mail}}</td>
          </tr>
          <tr>
              <td class="title">SchoolType</td>
              <td>{{$student->SchoolType}}</td>
              <td class="title">FatherPhone</td>
              <td>{{$student->FatherPhone}}</td>
          </tr>
         <tr>
             <td class="title">FirstLanguage</td>
             <td>{{$student->FirstLanguage}}</td>
             <td class="title">Total</td>
             <td>{{$student->Total}}</td>
         </tr>
         <tr>
             <td class="title">eng1</td>
             <td>{{$student->eng1}}</td>
             <td class="title">FinalTotal</td>
             <td>{{$student->FinalTotal}}</td>
         </tr>
         <tr>
             <td class="title">reg_date</td>
             <td>{{$student->reg_date}}</td>
             <td class="title">password</td>
             <td>{{$student->password}}</td>
         </tr>
         <tr>
             <td class="title">created_at</td>
             <td>{{$student->created_at}}</td>
             <td class="title">updated_at</td>
             <td>{{$student->updated_at}}</td>
         </tr>
      </table>
            </div>
        </div>
    </div>

@endsection
