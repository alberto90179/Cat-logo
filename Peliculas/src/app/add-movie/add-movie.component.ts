import { Component } from '@angular/core';
import { MovieService } from '../movie.service';

@Component({
  selector: 'app-add-movie',
  standalone: true,
  imports: [],
  templateUrl: './add-movie.component.html',
  styleUrl: './add-movie.component.css'
})
export class AddMovieComponent {
  title: string = '';
  director: string = '';
  year: number | null = null;

  constructor(private movieService: MovieService) { }

  addMovie() {
    this.movieService.addMovie({ title: this.title, director: this.director, year: this.year });
    // Limpiar el formulario
    this.title = '';
    this.director = '';
    this.year = null;
  }
}
