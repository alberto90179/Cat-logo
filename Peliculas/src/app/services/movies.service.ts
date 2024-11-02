import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

interface Movie {
  id: number;
  title: string;
  synopsis: string;
  year: number;
  cover: string;
}

@Injectable({
  providedIn: 'root'
})

export class MoviesService {
  private apiUrl = 'http://tu-api-laravel.com/api/movies'; // Cambia esto a la URL de tu API

  constructor(private http: HttpClient) { }

  getMovies(): Observable<Movie[]> {
    return this.http.get<Movie[]>(this.apiUrl);
  }

  getMovie(id: string): Observable<Movie> {
    return this.http.get<Movie>(`${this.apiUrl}/${id}`);
  }
}