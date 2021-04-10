<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\classes;
class classController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
 
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        //
        $obj=classes::all();
        return view('admin.classes',compact('obj'));
    }
    public function showForm()
    {
        return view('admin.addClass');
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
        $obj=new classes();
        $obj->cls_nme=$request->class;
        $obj->admin_fees=$request->fees;
        $obj->save();
        return redirect('/addClass')->with('add', 'Added Success');
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
        $obj=classes::where('id',$id)->first();
        return view('admin.upclass',compact('obj'));
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
        $obj=classes::where('id',$id)->first();
        $obj->cls_nme=$request->class;
        $obj->admin_fees=$request->fees;
        $obj->save();
        return redirect('/classes');
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
        $obj=classes::find($id);
        $obj->delete();
        return redirect('/classes');
    }
}
