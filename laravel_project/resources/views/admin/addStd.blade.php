@extends('admin.master')

@section('content')

<div class="container" style="width:90%;">
	<h1 style="font-family:'Brush Script Std'">Add A Student</h1>
	<br>
	<br>
@if(Session::has('add_s'))
<p class="alert alert-success">{{ Session::get('add_s') }}</p>

@endif
	<form action="/std" method="post">
		{{ csrf_field() }}
		<div class="form-group">
			<label>First Name:</label>
			<input type="text" name="fname" class="form-control">
		</div>
				<div class="form-group">
			<label>Last Name:</label>
			<input type="text" name="lname" class="form-control">
		</div>
				<div class="form-group">
			<label>Email:</label>
			<input type="text" name="email" class="form-control">
		</div>
		<div class="form-group">
			<label>Class:</label>
			<select name="class" class="form-control">
				@foreach($obj as $o)
				<option value="{{ $o->id }}" class="form-control">{{ $o->cls_nme }}</option>
				@endforeach
			</select>
		</div>
		<div class="form-group">
			<label>Age:</label>
			<input type="text" class="form-control" name="age">
		</div>
		<div class="form-group">
			<label>Address:</label>
			<input type="text" class="form-control" name="add">
		</div>
		<div class="form-group">
			<label>Fees:</label>
			<input type="text" class="form-control" name="fees">
		</div>
		<input type="submit" class="btn btn-success" value="Insert" name="">
	</form>
</div>
@endsection