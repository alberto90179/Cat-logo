import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { MoviesService } from '../services/movies.service';

interface Movie {
  id: number;
  title: string;
  year: number;
  genre: string;
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
