<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MovieController;

// Ruta para obtener todos los registros (GET)
Route::get('/movies', [MovieController::class, 'index']);

// Ruta para obtener un registro específico por ID (GET)
Route::get('/movies/{id}', [MovieController::class, 'show']);

// Ruta para insertar un nuevo registro (POST)
Route::post('/movies', [MovieController::class, 'store']);

// Ruta para actualizar un registro existente (PUT)
Route::put('/movies/{id}', [MovieController::class, 'update']);

// Ruta para eliminar un registro (DELETE)
Route::delete('/movies/{id}', [MovieController::class, 'destroy']);

Route::get('/', function () {
    return view('welcome');
});
