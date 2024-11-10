import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { MoviesService } from '../services/movies.service';
import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';
@Injectable({
  providedIn: 'root'
})
export class MovieService {
  private movies: Movie[] = []; // Aquí almacenarás las películas
  private moviesSubject = new BehaviorSubject<Movie[]>(this.movies);

  constructor() { }

  getMovies() {
    return this.moviesSubject.asObservable();
  }

  addMovie(movie: Movie) {
    this.movies.push(movie);
    this.moviesSubject.next(this.movies);
  }

  editMovie(index: number, updatedMovie: Movie) {
    this.movies[index] = updatedMovie;
    this.moviesSubject.next(this.movies);
  }

  getMovie(index: number): Movie {
    return this.movies[index];
  }
}
interface Movie {
  id: number;
  title: string;
  synopsis: string;
  year: number;
  cover: string;
}
@Component({
  selector: 'app-movie',
  templateUrl: './movie.component.html',
  styleUrls: ['./movie.component.css']
})


export class MovieComponent implements OnInit {
  movie: any;

  constructor(
    private route: ActivatedRoute,
    private moviesService: MoviesService
  ) {}

  ngOnInit(): void {
    const id = this.route.snapshot.paramMap.get('id') || '';  // Si 'id' es null, se asigna una cadena vacía
    this.moviesService.getMovie(id).subscribe((data: any) => {
    this.movie = data;
    });
  }
}
