<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Session;
use App\Models\Usuario;
use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    //listado
    public function index()
    {
        //--- formas de enviar variabes a la vista
        $nombre='Sergio Jimenez M..';
       /* $usuarios=[
            ['nombre'=>'usuario 1'],
            ['nombre'=>'usuario 2'],
            ['nombre'=>'usuario 3'],
            ['nombre'=>'usuario 4']
        ];
        */
        //$usuarios = Usuario::all();// lista todos (no es bueno si son muchos)
        $usuarios = Usuario::paginate();// los regresa paginados

        //return view('usuarios.index')->with('nombre',$nombre);
        //return view('usuarios.index')->with(['nombre'=>$nombre]);
        //return view('usuarios.index',['nombre'=>$nombre]);
        return view('usuarios.index',compact('nombre','usuarios'));
    }

    //---- carga el formulario para guardar vista add
    public function add()
    {
        return view('usuarios.add');
    }

    //---------- guarda en la BD
    public function save(Request $request)
    {
        /*$usuario= new Usuario();// crea un objeto
        $usuario->nombres=$request->nombres;
        $usuario->apellidos=$request->apellidos;
        $usuario->direccion=$request->direccion;
        $usuario->telefono=$request->telefono;
        $usuario->email=$request->email;
        $usuario->save();*/
        Usuario::create($request->all());// necesita habilitar en e mopdelo la propiedad  protected $fillable (con los campos)
		return redirect()->route('usuario.index');
    }

    //---- editar un usuario
    public function edit(Usuario $usuario )
    {
        return view('usuarios.edit',compact('usuario'));
    }
 
    public function delete(Usuario $usuario)
    { 
        $usuario->delete();
        // se ne ecsita inlcuir arriba: use Illuminate\Support\Facades\Session;
        Session::flash('ok', 'Registro eliminado');
        return redirect()->route('usuario.index');
    }

   

    public function update(Request $request,Usuario $usuario)
    {
        
        $usuario->nombres=$request->nombres;
        $usuario->apellidos=$request->apellidos;
        $usuario->direccion=$request->direccion;
        $usuario->telefono=$request->telefono;
        $usuario->email=$request->email;
        $usuario->save();
        // se ne ecsita inlcuir arriba: use Illuminate\Support\Facades\Session;
        Session::flash('ok', 'Registro Actualizado');
        return redirect()->route('usuario.index');
    }

    //----------- para imprimir con la libreria DomPDF
    public function imprimirpdf()
    {
        $usuarios = Usuario::all();
        $pdf = \PDF::loadView('usuarios.imprimirpdf',compact('usuarios'));
        return $pdf->download('imprimir.pdf');
    }
    

}
