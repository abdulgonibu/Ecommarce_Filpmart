@if( Session('success'))
    <div class="alert alert-success fade in">
        <a href="#" class="close" data-dismiss="alert">×</a>
        {{ Session('success') }}
    </div>
@endif

{{--@error('brand_name')
    <div class="alert alert-danger fade in">
        <a href="#" class="close" data-dismiss="alert">×</a>
        {{ $message }}
    </div>
@enderror

@error('test')
<div class="alert alert-danger fade in">
    <a href="#" class="close" data-dismiss="alert">×</a>
    {{ $message }}
</div>
@enderror--}}

@if($errors->any())
    @foreach($errors->all() as $error)
        <div class="alert alert-danger fade in">
            <a href="#" class="close" data-dismiss="alert">×</a>
            {{ $error }}
        </div>
    @endforeach

@endif
