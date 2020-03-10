@extends('layouts.app')

@section('content')
    <!-- CONTENT -->
    <!-- ========================================================= -->
    <div class="content">
        <!-- content HEADER -->
        <!-- ========================================================= -->
        <div class="content-header">
            <!-- leftside content header -->
            <div class="leftside-content-header">
                <ul class="breadcrumbs">
                    <li><i class="fa fa-home" aria-hidden="true"></i><a href="{{ route('home') }}">Dashboard</a></li>
                    <li><a href="javascript:avoid(0)">Brand</a></li>
                    <li><a href="javascript:avoid(0)">Manage Brand</a></li>
                </ul>
            </div>
        </div>
        <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
        <div class="row animated fadeInUp">
            <div class="row">

                <div class="col-sm-12 col-md-8 col-md-offset-2">
                    @include('includes.message');
                    {{--@if( Session('success'))
                    <div class="alert alert-success fade in">
                        <a href="#" class="close" data-dismiss="alert">×</a>
                         {{ Session('success') }}
                    </div>
                    @endif--}}
                    {{-- <h1 text-danger>{{ Session('success') }}</h1>--}}
                    {{-- <h1>{{ Session::get('message') }}</h1>--}}
                    <div class="panel b-primary bt-md">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-xs-6">
                                    <h4>Manage Category List</h4>
                                </div>
                                <div class="col-xs-6 text-right">
                                    <a href="{{ route('add-subcategory')}}" class="btn btn-primary">Add SubCategory</a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table id="basic-table" class="data-table table table-striped nowrap table-hover table-bordered" cellspacing="0" width="100%">
                                            <thead>
                                            <tr>
                                                <th>Sl No</th>
                                                <th>Category</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @php($i = 1)
                                            @foreach($data as $row)
                                                <tr>
                                                    <td>{{ $i }}</td>
                                                    <td>{{ $row->category->category}} >{{ $row->cat_name}}</td>
                                                    <td>{{--{{ $row->status == 1 ? 'Active':'Inactive'}}--}}
                                                        <input type="checkbox" data-size="mini" data-toggle="toggle"  data-on="Active" data-off="Inactive" id="categoryStatus" data-id="{{ $row->id}}" {{ $row->status == 1 ? 'checked':'' }}>
                                                    </td>
                                                    <td>
                                                        {{-- @if($row->status == 1)
                                                         <a href="{{ route('inactive-brand', $row->id )}}" class="btn-info btn-xs"><i class="fa fa-arrow-up"></i></a>
                                                         @else
                                                             <a href="{{ route('active-brand', $row->id )}}" class="btn-warning btn-xs"><i class="fa fa-arrow-down"></i></a>
                                                         @endif--}}
                                                        <a href="{{ route('edit-brand', $row->id )}}" class="btn-warning btn-xs"><i class="fa fa-pencil"></i></a>
                                                        <a href="{{ route('delete-category', $row->id )}}" class="btn-danger btn-xs"><i class="fa fa-trash-o"></i></a>
                                                    </td>
                                                </tr>
                                                @php($i++)
                                            @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
        <!--TIMELINE left-->


        <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
@endsection
