<?php

use App\Http\Controllers\UsuarioController;
use Illuminate\Support\Facades\Route;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/', function () {
    return view('welcome');
});
//----- Sin usar vistas, se puede ver como
//http://127.0.0.1:8000/inicio
Route::get('/inicio',function(){
    return "Bienvenido a nuestro inicio";
});
//pasando parametros
//http://127.0.0.1:8000/inicio/Joehurtado
Route::get('/inicio/{nombre}',function($nombre){
    return "Bienvenido $nombre a nuestro inicio";
});

//pasando parametros no obligatorio
//http://127.0.0.1:8000/curso/java
//http://127.0.0.1:8000/curso/
Route::get('/curso/{nombre?}',function($nombre='inicial'){
    return "Bienvenido al curso $nombre ";
});
//pasando 2 parametros
//http://127.0.0.1:8000/products/Jamon/carnes frias
Route::get('products/{product}/{category}', function ($product,$category) {
    return "Producto recibido: $product pertenece a la categoria: $category";
});

//----------Asignarle nombre a las rutas
Route::get('/users/', function () {
    return "Listado de usuarios";
})->name('userlist');

//---------------- llamar a los controladores desde la ruta
//---- llama el listar
Route::get('/usuarios/listado/', [UsuarioController::class,'index'])->name('usuario.index');
//---- llama el guardar
Route::get('/usuarios/add', [UsuarioController::class,'add'])->name('usuario.add');
//guarda
Route::post('/usuarios/', [UsuarioController::class,'save'])->name('usuario.save');
//--- ruta para el pdf
Route::get('/usuarios/imprimirdompdf', [UsuarioController::class,'imprimirpdf'])->name('usuario.imprimirdompdf');
//-- editar
Route::get('usuarios/{usuario}/edit', [UsuarioController::class, 'edit'])->name('usuario.edit');
//---- llama el update
Route::put('/usuarios/{usuario}', [UsuarioController::class,'update'])->name('usuario.update');
//---- llama el eliminar
Route::get('/usuarios/{usuario}', [UsuarioController::class,'delete'])->name('usuario.delete');
