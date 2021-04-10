@extends('admin.master')


@section('content')
<div class="container" style="width:90%;">
  <h1 style="font-family:'Brush Script Std'">Add A Class</h1>
<form action="/classes/{{ $obj->id }}" method="post">
  {{ csrf_field() }}
  {{ method_field('PUT') }}
  <div class="form-group">
    <label for="class">Enter Class:</label>
    <input type="text" class="form-control" id="class" name="class" value="{{$obj->cls_nme}}">
  </div>
  <div class="form-group">
    <label for="fees">Monthly Fees:</label>
    <input type="text" class="form-control" id="fees" name="fees" value="{{$obj->admin_fees}}">
  </div>
  <button type="submit" class="btn btn-default">Update</button>
</form>
</div>
@endsection