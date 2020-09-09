@extends('pageManagement')
<!-- Content being displayed!-->
@section('content')
<div class="row">
    <div class="col-md-12">
        <br />
        <h3 aling="center">Add Data</h3>
        <br />
        <form method="post" action="{{url('Pages')}}">
            <div class="form-group">
                <input type="text" name="title" class="form-control" placeholder="Enter page title" />
            </div>
            <div class="form-group">
                <input type="text" name="link" class="form-control" placeholder="Enter page link" />
            </div>
            <div class="form-group">
                <input type="number" name="textSize" class="form-control" placeholder="Enter text size" />
            </div>
            <div class="form-group">
                <input type="text" name="textColour" class="form-control" placeholder="Enter text colour" />
            </div>
            <div class="form-group">
                <input type="text" name="backgroundColour" class="form-control" placeholder="Enter background colour" />
            </div>
            <div class="form-group">
                <input type="text" name="font" class="form-control" placeholder="Enter font" />
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary" />
            </div>
        </form>
    </div>
</div>
<!-- Closes the directive!-->
@endsection