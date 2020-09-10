@extends('products')

@section('content')
<div class="row">
    <div class="col-md-12">
        <br />
        <h3 aling="center">Add Product</h3>
        <br />
        <form method="post" action="{{url('product')}}">
            <div class="form-group">
                <input type="text" name="name" class="form-control" placeholder="Enter Product Name" />
            </div>
            <div class="form-group">
                <input type="double" name="price" class="form-control" placeholder="Enter Product Price" />
            </div>
            <div class="form-group">
                <input type="LONGBLOB" name="image
@endsection