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
