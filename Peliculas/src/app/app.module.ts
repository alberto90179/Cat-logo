import { Component } from '@angular/core';
import { RouterModule } from '@angular/router';

@Component({
  standalone: true, // Esto lo hace standalone
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  imports: [RouterModule], // Importa módulos necesarios aquí
})

export class AppComponent {}
