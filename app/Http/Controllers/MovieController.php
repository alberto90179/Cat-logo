<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class MovieController extends Controller
{
   // Función para obtener todos los registros (GET)
   public function index()
   {
       $movies = Movie::all(); // Traer todos los registros
       return response()->json($movies); // Retornar los registros en formato JSON
   }

   // Función para obtener un registro específico por ID (GET)
   public function show($id)
   {
       $movie = Movie::find($id); // Encontrar la película por ID
       if ($movie) {
           return response()->json($movie); // Retornar el registro si existe
       }
       return response()->json(['message' => 'Movie not found'], 404); // Retornar error si no existe
   }

   // Función para insertar un nuevo registro (POST)
   public function store(Request $request)
   {
       // Validar los datos recibidos
       $validated = $request->validate([
           'title' => 'required|string|max:255',
           'synopsis' => 'required|string',
           'year' => 'required|integer|min:1888|max:' . date('Y'), // Año válido entre 1888 y el año actual
           'cover' => 'required|string|max:255', // Aquí podrías validar también si es una URL válida
       ]);

       // Crear el nuevo registro en la base de datos
       $movie = Movie::create($validated);

       // Retornar la respuesta con el registro creado
       return response()->json($movie, 201); // 201 es el código de "Created"
   }
}