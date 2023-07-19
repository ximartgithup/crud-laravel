<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Usuario extends Model
{
    use HasFactory;
    protected $fillable = ['nombres', 'apellidos', 'direccion', 'telefono','email'];
    public $timestamps = false; //para que use los campos  created_at y updated_at 
}
