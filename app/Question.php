<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
protected $table = 'questions';
protected $fillable = ['question','answer' , 'student_id' , 'public'];
}
