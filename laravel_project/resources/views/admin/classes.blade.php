@extends('admin.master')

@section('content')

<div class="container" style="width:90%;">
	<h1 style="font-family:'Brush Script Std'">Classes</h1>
	<br>
	<br>
	<input id="t-search" onkeyup="search()" type="search" placeholder="search by class name" class="form-control" />
     
<table class="table table-hover  showData">
	<thead>
		<tr>
			<th>Id</th>
			<th>Class Name</th>
			<th>Admission Fees</th>
			<th>Update Info</th>
			<th>Delete</th>
		</tr>
	</thead>
	<tbody>
		@foreach($obj as $o)
		<tr>
			<td>{{ $o->id }}</td>
			<td>{{ $o->cls_nme }}</td>
			<td>{{ $o->admin_fees }}</td>
			<td>
				<a href="/classes/{{ $o->id }}/edit">
					<button class="btn-success btn">Update</button>
				</a>
			</td>
			<td>
				<form action="/classes/{{ $o->id }}" method="post">
					{{ csrf_field() }}
					{{ method_field('DELETE') }}
					<input type="submit" class="btn btn-danger" value="Delete" name="">
					
				</form>
			</td>
		</tr>
		@endforeach
	</tbody>
</table>
	<table class="table table-hover ajaxData" style="display:none">
	@foreach($obj as $o)
	<tr>
			<th>Class Name</th>
			<th>{{ $o->admission }}</td>
	</tr>
	<tbody id="success2">

	@endforeach
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
       url:'{{URL::to("/search5")}}',
       data: {
           s: search,
          
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