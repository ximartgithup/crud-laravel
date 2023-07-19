<!-- Para heredar la plantilla !-->
@extends('welcome')
<!-- pone el titulo  !-->
@section('title','Editar usuarios')     
<!------- Se define la seccion con el nombre que se definió en la plantilla base que heredó -->
@section('contenido')
<h3>editando usuario</h3>
<div class="container">
    <form method="post" action="{{route('usuario.update',$usuario)}}">
        @csrf
        @method('put')
        <div class="mb-3">
            <label  class="form-label">Nombres </label>
            <input type="text" class="form-control" name="nombres" value="{{$usuario->nombres}}">
        </div>
        <div class="mb-3">
            <label  class="form-label">Apellidos </label>
            <input type="text" class="form-control" name="apellidos" value="{{$usuario->apellidos}}">
        </div>
        
        <div class="mb-3">
            <label  class="form-label">Direccion </label>
            <input type="text" class="form-control" name="direccion" value="{{$usuario->direccion}}">
        </div>
        <div class="mb-3">
            <label  class="form-label">Telefono </label>
            <input type="text" class="form-control" name="telefono" value="{{$usuario->telefono}}">
        </div>
        <div class="mb-3">
            <label  class="form-label">Email </label>
            <input type="email" class="form-control" name="email" value="{{$usuario->email}}">
        </div>

    <button type="submit" class="btn btn-primary">Guardar</button>
     <a href="{{route('usuario.index')}}"><button type="button" class="btn btn-secondary">Regresar</button></a>
    </form>
 </div>
@endsection