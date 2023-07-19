<!-- Para heredar la plantilla !-->
@extends('welcome')
<!-- pone el titulo  !-->
@section('title','Nuevo de usuarios')     
<!------- Se define la seccion con el ombre que se definció en la plantilla base que heredó -->
@section('contenido')
 <div class="container">
    <form method="post" action="{{route('usuario.save')}}">
        @csrf
        <div class="mb-3">
            <label  class="form-label">Nombres </label>
            <input type="text" class="form-control" name="nombres" >
        </div>
        <div class="mb-3">
            <label  class="form-label">Apellidos </label>
            <input type="text" class="form-control" name="apellidos" >
        </div>
        
        <div class="mb-3">
            <label  class="form-label">Direccion </label>
            <input type="text" class="form-control" name="direccion" >
        </div>
        <div class="mb-3">
            <label  class="form-label">Telefono </label>
            <input type="text" class="form-control" name="telefono" >
        </div>
        <div class="mb-3">
            <label  class="form-label">Email </label>
            <input type="email" class="form-control" name="email" >
        </div>

    <button type="submit" class="btn btn-primary">Guardar</button>
     <a href="{{route('usuario.index')}}"><button type="button" class="btn btn-secondary">Regresar</button></a>
    </form>
 </div>
@endsection