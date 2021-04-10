<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\students;
use App\classes;
use App\AdmissionModel;
use DB;

class studentController extends Controller
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
        $obj=DB::table('students')
        ->select('students.*','classes.cls_nme')
        ->join('classes','classes.id','=','students.cls_id')
        ->orderby('students.id','asc')
        ->paginate(10);

        return view('admin.students',compact('obj'));
    }
    public function showForm()
    {
        
        $obj=classes::all();
        return view('admin.addStd',compact('obj'));
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
        $obj=new students();
        $obj->std_fname=$request->fname;
        $obj->std_lname=$request->lname;
        $obj->std_mail=$request->email;
        $obj->std_age=$request->age;
        $obj->std_add=$request->add;
        $obj->cls_id=$request->class;
        $obj->mnth_fees=$request->fees;
        $obj->save();
  
        return redirect('/addStd')->with('add_s', 'Added Success');
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
        $objCls=classes::all();
        $obj=DB::table('students')->where('id',$id)->first();
        return view('admin.upStd',compact('obj','objCls'));
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
        $obj=students::where('id',$id)->first();
        $obj->std_fname=$request->fname;
        $obj->std_lname=$request->lname;
        $obj->std_mail=$request->email;
        $obj->std_age=$request->age;
        $obj->std_add=$request->add;
        $obj->cls_id=$request->class;
        $obj->mnth_fees=$request->fees;
        $obj->save();
        return redirect('/std');
    }
    public function showadd()
    {
        return view('admin.add_admi');


    } 
    
    public function viewadd()
    {
         return view('admin.view_add');


    } 
    
    public function addfee(Request $req)
    {
        $add=new AdmissionModel();
        $add->class_name=$req->select_class;
        $add->student_id=$req->Admision;
        $add->save();
        return redirect('AddAdmission')->with('addm', 'Added Success');


    } 
    public function showclass()
    {
        $s=classes::all();
        $std = students::all();
        return view('admin.add_admi', ['fees' => $std])->with('s', $s);

    }
    
    public function viewclass()
    {
        //$v=AdmissionModel::all();
        $data = $obj=DB::table('admission_models')
        ->select('admission_models.id as id', 'admission_models.class_name as class','students.mnth_fees as fees')
        ->join('students','admission_models.student_id','=','students.id')->get();
        return view('admin.view_add')->with('v', $data);


    }
    
    public function updatefees(Request $id)
    {
        $up=AdmissionModel::find($id->id);
        return view('admin.upd_add')->with('up', $up);


    }
    
    public function upddd(Request $re)
    {
        $upda=AdmissionModel::find($re->id);
        $upda->mnth_fees=$re->updd;
        $upda->update();
        


    }
    public function teacher_search2(Request $request1){

        if($request1->search5){
            $searchs = DB::table('classes')->where('cls_nme','like','%'.$request1->search5.'%')->get();
            
            
            // echo $data;
            foreach($searchs as $dd){
                $data = DB::table('students')->where('cls_id','like', $dd->id)->get();
                if($data){
                    foreach($data as $s2){
                        echo '<tr> <td>'.$s2->std_fname.'</td> <td>'.$s2->std_lname.'</td><td>'.$s2->std_mail.'</td><td>'.$s2->std_age.'</td><td>'.$s2->std_add.'</td><td>'.$s2->mnth_fees.'</td></tr>';
                    }
                }
            }
     
                             
        }
    }
    public function teacher_search3(Request $request2){

        if($request2->s){
            $searc = DB::table('admission_models')->where('class_name','like','%'.$request2->s.'%')->get();

                if($searc){
                    foreach($searc as $s3){
                        echo '<tr> <td>'.$s3->class_name.'</td> <td>'.$s3->admission_fee.'</td></tr>';
                    }
                }
     
                             
        }
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
        $obj=students::where('id',$id)->first();
        $obj->delete();
        return redirect('/std');
    }
}
