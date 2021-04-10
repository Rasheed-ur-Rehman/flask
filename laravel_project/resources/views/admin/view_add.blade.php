@extends('admin.master')

@section('content')
<div class="container" style="width:90%;">
<h1 style="font-family:'Brush Script Std'">View Admission Fee</h1>
<br>
<br>
	<table class="table table-hover">
	<tr>
    <th>Class name</th>
    <th>Admission Fees</th>
    <th>Update</th>
    </tr>
    @foreach($v as $show)
    <tr class="success">

    <td>{{$show->class}}</td>
    <td>{{$show->fees}}</td>
    
    <td><a href="up?id=<?php echo $show->id?>" class="btn btn-success">Update Admission Fee</a></td>
    
    </tr>
    @endforeach
</table>
</div>
@endsection

