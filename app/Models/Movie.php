<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    use HasFactory;

    // Permitir la asignación masiva de estos campos
    protected $fillable = ['title', 'synopsis', 'year', 'cover'];
}
