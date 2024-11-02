import { Component, NgModule, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { MoviesService } from '../services/movies.service';  
import { BrowserModule } from '@angular/platform-browser';
import { AppComponent } from '../app.component';


@Component({
  selector: 'app-movies',
  templateUrl: './movies.component.html',
  styleUrls: ['./movies.component.css']
})
export class MoviesComponent implements OnInit {
  movies: any[] = [];

  constructor(private moviesService: MoviesService) {}

  ngOnInit(): void {
    this.loadMovies();
  }

  loadMovies(): void {
    this.moviesService.getMovies().subscribe((data: any) => {
      this.movies = data;
    });
  }
}


