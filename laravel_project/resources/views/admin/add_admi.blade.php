@extends('admin.master')

@section('content')



<div class="container" style="width:90%;">
  <h1 style="font-family:'Brush Script Std'">Add Admission Fees</h1>
<br>
<br>
@if(Session::has('addm'))
<p class="alert alert-success">{{ Session::get('addm') }}</p>

@endif
<form action="/add_admi" >
  {{ csrf_field() }}
  <div class="form-group">
    <label for="class">Select class name : </label>
    <Select name="select_class" class="form-control">
    <option value="">Select any one</option>
    @foreach($s as $re)
    <option value="{{$re->cls_nme}}">{{$re->cls_nme}}</option>

    @endforeach
    </Select>
    </div>
   
  <div class="form-group">
    <label for="fees">Enter Admission Fees:</label>
    <Select name="Admision" class="form-control">
    <option value="">Select Admision Fees</option>
    @foreach($fees as $f)
    <option value="{{$f->id}}">{{$f->mnth_fees}}</option>
  @endforeach
    </Select>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
</div>
@endsection