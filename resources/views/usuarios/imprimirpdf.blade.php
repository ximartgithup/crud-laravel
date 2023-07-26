<h2>Listado de usuarios</h2>
<table border="1">
 <thead>
  <tr>
    <th>ID</th>
    <th>NOMBRES</th>
    <th>TELEFONO</th>
    <th>CORREO</th>
  </tr>
 </thead>
 <tbody>
    @foreach($usuarios as $reg)
    <tr>
      <td>{{$reg->id}}</td>
      <td>{{$reg->apellidos}} {{$reg->nombres}}</td>
      <td>{{$reg->telefono}}</td>
      <td>{{$reg->email}}</td>
     </tr>
    @endforeach
 </tbody>
</table>

   