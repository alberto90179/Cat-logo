import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { MoviesModule } from "./movies/movies.module";

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, MoviesModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'Peliculas';
}
