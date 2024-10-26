import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { MoviesComponent } from './movies/movies.component';
import { MovieComponent } from './movie/movie.component';

export const routes: Routes = [ // Export the routes variable
  { path: 'movies', component: MoviesComponent },
  { path: '', redirectTo: '/movies', pathMatch: 'full' },
  { path: 'movie/:id', component: MovieComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
