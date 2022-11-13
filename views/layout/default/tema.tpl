{if isset(Session::get('autenticate'))}
<div class="app-title">
    <div>
        <h1><i class="fa fa-home"></i> {{$title}}</h1>
        <p>{{$subject}} </p>
    </div>
    <ul class="app-breadcrumb breadcrumb">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <li class="breadcrumb-item"><a href="#">Blank Page</a></li>
    </ul>
</div>
{/if}