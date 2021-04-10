@extends('admin.master')

@section('content')



<div class="container" style="width:90%;">
	<h1 style="font-family:'Brush Script Std'">Add A Student</h1>
	<form action="/std/{{ $obj->id }}" method="post">
		{{ csrf_field() }}
		{{ method_field('PUT') }}
		<div class="form-group">
			<label>First Name:</label>
			<input type="text" value="{{ $obj->std_fname }}" name="fname" class="form-control">
		</div>
				<div class="form-group">
			<label>Last Name:</label>
			<input type="text" name="lname" class="form-control" value="{{ $obj->std_lname }}">
		</div>
				<div class="form-group">
			<label>Email:</label>
			<input type="text" name="email" class="form-control" value="{{ $obj->std_mail }}">
		</div>
		<div class="form-group">
			<label>Class:</label>
			<select name="class" class="form-control">
				@foreach($objCls as $o)
				<option value="{{ $o->id }}" class="form-control">{{ $o->cls_nme }}</option>
				@endforeach
			</select>
		</div>
		<div class="form-group">
			<label>Age:</label>
			<input type="text" class="form-control" name="age" value="{{ $obj->std_age }}">
		</div>
		<div class="form-group">
			<label>Address:</label>
			<input type="text" class="form-control" name="add" value="{{ $obj->std_add }}">
		</div>
				<div class="form-group">
			<label>Fees:</label>
			<input type="text" class="form-control" name="fees" value="{{ $obj->mnth_fees }}">
			
		</div>
		<input type="submit" class="btn btn-success" value="Update" name="">
	</form>
</div>
@endsection