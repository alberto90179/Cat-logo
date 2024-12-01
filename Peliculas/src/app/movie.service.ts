import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class MovieService {
  addMovie(newMovie: Movie) {
    throw new Error('Method not implemented.');
  }

  constructor() { }
}
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root' // Esto asegura que el servicio esté disponible en toda la aplicación
})
export class MoviesService {
  private apiUrl = 'https://localhost/movies';

  constructor(private http: HttpClient) { }

  getMovies() {
    return this.http.get(this.apiUrl);
  }
}
