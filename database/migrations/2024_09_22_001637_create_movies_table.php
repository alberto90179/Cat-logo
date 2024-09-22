<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('movies', function (Blueprint $table) {
            $table->id(); // Columna de ID autoincrementable
            $table->string('title'); //Titulo de la película
            $table->text('synopsis'); // Sinopsis de la pelicula
            $table->integer('year');  // Año de estreno
            $table->string('cover');  // Portada de la película (URL o ruta de imagen)
            $table->timestamps(); // Columnas created_at y updated_at
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('movies');
    }
};
