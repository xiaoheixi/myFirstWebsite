<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Page;

class PageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //This will load create.blade.php
        return view('page.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title'             =>  'required',
            'link'              =>  'required',
            'textSize'          =>  'required',
            'textColour'        =>  'required',
            'backgroundColour'  =>  'required',
            'font'              =>  'required',
        ]);
        $page = new Page([
            'title'             =>    $request->get('title'),
            'link'              =>    $request->get('link'),
            'textSize'          =>    $request->get('textSize'),
            'textColour'        =>    $request->get('textColour'),
            'backgroundColour'  =>    $request->get('backgroundColour'),
            'font'              =>    $request->get('font'),
        ]);
        $page->save();
        return redirect()->route('page.create')->with('success', 'Page Added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
