@extends('admin.master')

@section('content')

<div class="container" style="width:90%;">
  <h1 style="font-family:'Brush Script Std'">Add A Class</h1>
<br>
<br>
@if(Session::has('add'))
<p class="alert alert-success">{{ Session::get('add') }}</p>

@endif
<form action="/classes" method="post">
  {{ csrf_field() }}
  <div class="form-group">
    <label for="class">Enter Class:</label>
    <input type="text" class="form-control" id="class" name="class">
  </div>
  <div class="form-group">
    <label for="fees">Monthly Fees:</label>
    <input type="text" class="form-control" id="fees" name="fees">
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
</div>
@endsection