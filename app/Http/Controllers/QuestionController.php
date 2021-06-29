<?php

namespace App\Http\Controllers;

use App\Question;
use Illuminate\Http\Request;

class QuestionController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $questions = Question::where('public', '=', 0)->get();
        return view('question.index')->with('questions', $questions);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function show(Question $question)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $question = Question::find($id);
        return view('question.edit')->with('question', $question);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $question = Question::find($id);
        $question->question = $request->question;
        $question->answer = $request->answer;
        $question->student_id = $request->student_id;
        $question->save();
        return redirect('questions')->with("done", "Edit Answer Done");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Question  $question
     * @return \Illuminate\Http\Response
     */

    public function destroy($id)
    {
        $question = Question::find($id);
        $question->delete();
        return redirect()->back()->with('done', 'Deleted Done');
    }
    public function public()
    {
        $qestions =  Question::where("public", "=", 1)->get();
        return view('question.public')->with('qestions', $qestions);
    }
    public function makePublic($id)
    {
        $question = Question::find($id);
        $question->public = 1;
        $question->save();
        return redirect()->back()->with('done', 'Make Public Done');
    }
}
