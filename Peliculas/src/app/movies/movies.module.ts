import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router'; // Import RouterModule
import { MoviesComponent } from './movies.component';
import { MovieComponent } from '../movie/movie.component';
import { routes } from '../app.routes';

@NgModule({
  imports: [
    CommonModule,
    RouterModule.forChild(routes) // Import RouterModule and pass routes
  ],
  declarations: [MoviesComponent, MovieComponent],
  providers: [],
  exports: [MoviesComponent]
})
export class MoviesModule { }