@extends('admin.master')

@section('content')



<div class="container" style="width:90%;">
  <h1 style="font-family:'Brush Script Std'">Update Admission Fees</h1>
  
<br>
<br>

<form action="/updfee" >

  <input type="hidden" id="id" value="{{$up->id}}">
  
  <div class="form-group">
  <label for="fees">Enter Class:</label>
  <input type="text" class="form-control" value="{{$up->class_name}}" name="updd" >
    <label for="fees">Update Admission Fees:</label>
    <input type="text" class="form-control" value="{{$up->admission_fee}}" name="updd">
 
  </div>
  <button type="submit" class="btn btn-default">Update</button>
</form>
</div>
@endsection