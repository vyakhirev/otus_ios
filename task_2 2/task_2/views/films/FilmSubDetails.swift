//
//  FilmCountries.swift
//  task_2
//
//  Created by Vyahirev.Mihail on 15.03.2026.
//

import SwiftUI
import OpenAPIClient

struct FilmsSubDetails: View {
    let film: FilmSearchResponseFilms
    
    init(film: FilmSearchResponseFilms) {
        self.film = film
    }
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(film.filmLength ?? "")
                    .font(.headline)
                Text(film.rating ?? "")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text(film.year ?? "")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text(film.countries?.description ?? "")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            
            Spacer()
        }
    }
}
