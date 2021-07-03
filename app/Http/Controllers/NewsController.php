<?php

namespace App\Http\Controllers;

use App\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $news = News::orderBy('id', 'desc')->get();
        return view('news.index')->with('news', $news);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('news.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'post'=>'required',
             'postImage'=> 'mimes:png,jpg'
        ]);

        $news = new News();
        $news->news = $request->post;
        //    Images
        $postImage = $request->file('postImage');
        $postImageName= $postImage->getClientOriginalName();
        $postImage->move(public_path().'/uploads/newsImg/', $postImageName);
        $news->image =   $postImageName;

        // PDFs
        $postPdf = $request->file('postPdf');
        $postPdfName= $postPdf->getClientOriginalName();
        $postPdf->move(public_path(). '/uploads/newspdf/', $postPdfName);
        $news->pdf =   $postPdfName;
        $news->adminId = auth()->user()->id;
        $news->save();
        return redirect('newss')->with("done", "Added Done");
    }


    /**
     * Display the specified resource.
     *
     * @param  \App\News  $news
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $news = News::find($id);
        return view('news.show')->with("news", $news);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\News  $news
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $news = News::find($id);
        return view('news.edit')->with("news", $news);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\News  $news
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'post'=>'required',

        ]);

        $news = News::find($id);
        $news->news = $request->post;

        $news->save();
        return redirect('newss')->with("done", "Updated Done");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\News  $news
     * @return \Illuminate\Http\Response
     */
    public function destroy( $id)
    {

        $news = News::find($id);
        $news->delete();
        return redirect('newss')->with("done", "Delete Done");
    }
}
