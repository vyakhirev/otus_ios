//
//  FilmsDetails.swift
//  task_2
//
//  Created by Vyahirev.Mihail on 15.03.2026.
//

import SwiftUI
import OpenAPIClient

struct FilmsDetails: View {
    let film: FilmSearchResponseFilms
    
    init(film: FilmSearchResponseFilms) {
        self.film = film
    }
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: film.posterUrl ?? "")) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(width: .infinity, height: 390)
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: .infinity, height: 390)
                        .cornerRadius(6)
                case .failure:
                    Image(systemName: "photo")
                        .frame(width: .infinity, height: 390)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(16)
                @unknown default:
                    EmptyView()
                }
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(film.nameRu ?? film.nameEn ?? "Без названия")
                    .font(.headline)
                Text(film.description ?? "Нет описания")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            NavigationLink {
                FilmsSubDetails(film: film)
            } label: {
                Text( "Подробнее")
            }
            
            Spacer()
        }
    }
}
