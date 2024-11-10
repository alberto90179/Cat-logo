import { Component } from '@angular/core';

@Component({
  selector: 'app-edit-movie',
  standalone: true,
  imports: [],
  templateUrl: './edit-movie.component.html',
  styleUrl: './edit-movie.component.css'
})
export class EditMovieComponent {
  title: string = '';
  director: string = '';
  year: number | null = null;
  index: number | null = null;

  constructor(
    private movieService: MovieService,
    private route: ActivatedRoute,
    private router: Router
  ) { }

  ngOnInit() {
    this.index = Number(this.route.snapshot.paramMap.get('id'));
    const movie = this.movieService.getMovie(this.index);
    this.title = movie.title;
    this.director
  }
}
