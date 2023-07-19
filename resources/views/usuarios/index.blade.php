<!-- Para heredar la plantilla !-->
@extends('welcome')
<!-- pone el titulo  !-->
@section('title','Listado de usuarios')     
<!------- Se define la seccion con el ombre que se definció en la plantilla base que heredó -->
@section('contenido')
<h2>Listado de usuarios</h2>
<!--<strong>Recibio: </strong><?php /*echo $nombre; */?> -->
@if(Session::has('ok'))
   <div class="alert alert-success alert-dismissible fade show" role="alert">
      <strong>Exito!</strong> {{session('ok')}}
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
 </div>
@endif
<a href="{{route('usuario.add')}}"><button type="button" class="btn btn-primary">Nuevo usuario</button></a>
<table class="table table-striped table-hover">
 <thead>
  <tr>
    <th>ID</th>
    <th>NOMBRES</th>
    <th>TELEFONO</th>
    <th>CORREO</th>
    <th>ACCIONES</th>
  </tr>
 </thead>
 <tbody>
    @foreach($usuarios as $reg)
    <tr>
      <td>{{$reg->id}}</td>
      <td>{{$reg->apellidos}} {{$reg->nombres}}</td>
      <td>{{$reg->telefono}}</td>
      <td>{{$reg->email}}</td>
      <td>
      <a href="{{route('usuario.delete',$reg->id)}}"><button type="button" class="btn btn-danger">Eliminar</button></a>
      <a href="{{route('usuario.edit',$reg)}}"><button type="button" class="btn btn-info">Editar</button></a>
      
        </td>
    </tr>
    @endforeach
 </tbody>
 <tfoot>
 <tr>
    <th>ID</th>
    <th>NOMBRES</th>
    <th>TELEFONO</th>
    <th>CORREO</th>
    <th>ACCIONES</th>
  </tr>
 </tfoot>
</table>

 <div class="d-flex ">
    {{$usuarios->links()}}
 </div>

@endsection
   