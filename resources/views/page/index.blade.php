@extends('pageManagement')

@section('content')
<div class="row">
    <div class="col-md-12">
        <br />
        <h3 align="center">Page Data</h3>
        <br />
        <table class="table table-bordered">
            <tr>
                <th>Title</th>
                <th>URI</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            @foreach($pages as $row)
                <tr>
                    <td>{{$row['title']}}</td>
                    <td>{{$row['URI']}}</td>
                    <td></td>
                    <td></td>
                </tr>
            @endforeach
        </table>
    </div>
</div>
@endsection