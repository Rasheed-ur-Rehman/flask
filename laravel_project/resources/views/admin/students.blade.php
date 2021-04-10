@extends('admin.master')

@section('content')

<div class="container" style="width:90%;">
	<h1 style="font-family:'Brush Script Std'">Students</h1>
	<br>
	<br>
	 <input id="t-search" onkeyup="search()" type="search" placeholder="search by Class" class="form-control" />
       
	<table class="table table-hover showData ">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Last name</th>
				<th>Age</th>
				<th>Class</th>
				<th>Address</th>
				<th>Fees</th>
				<th>Update</th>
				<th>Delete</th>
				<th>Subjects</th>
			</tr>
		</thead>
		<tbody>
			@foreach($obj as $o)
			<tr>
				<td>{{ $o->id }}</td>
				<td>{{$o->std_fname}}</td>
				<td>{{$o->std_lname}}</td>
				<td>{{$o->std_age}}</td>
				<td>{{$o->cls_nme }}</td>
				<td>{{$o->std_add}}</td>
				<td>{{$o->mnth_fees}}</td>
				

				<td><a href="/std/{{$o->id}}/edit"><button class="btn btn-success">Update</button></td>
					<td><form action="/std/{{$o->id}}" method="post">
						{{ csrf_field() }}
						{{ method_field('DELETE') }}
						<input type="submit" value="Delete" class="btn btn-danger" name="">
						<td>{{$o->std_subject}}</td>
					</form></td>
			</tr>

			@endforeach
		</tbody>
	</table>
	
			{{ $obj->links() }}
			<table class="table table-hover ajaxData" style="display:none" >
	<tr>
                <th>Name</th>
				<th>LastName</th>
				<th>Email</th>
				<th>Age</th>
				<th>Address</th>
				<th>Fees</th>
				<td><a href="/std/{{$o->id}}/edit"><button class="btn btn-success">Update</button></td>
					<td><form action="/std/{{$o->id}}" method="post">
						{{ csrf_field() }}
						{{ method_field('DELETE') }}
						<input type="submit" value="Delete" class="btn btn-danger">
						
					</form></td>
	</td>
	<tbody id="success2">
	</tbody>
	</table>
	
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
function search(){
    var search = $('#t-search').val();
    if(search){
        $('.showData').hide();
        $('.ajaxData').show();
    }
    else{
        $('.showData').show();
        $('.ajaxData').hide();
    }
   $.ajax({
       type :"GET",
       url:'{{URL::to("/search4")}}',
       data: {
           search5: search,
          
       },
        datatype : 'html',

        success : function (response){
            console.log(response);
            $("#success2").html(response);
        }
   });
}
</script>

</div>
@endsection