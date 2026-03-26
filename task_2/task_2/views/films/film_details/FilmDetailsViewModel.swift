//
//  FilmDetailsViewModel.swift
//  task_2
//
//  Created by Vyahirev.Mihail on 26.03.2026.
//

import Foundation
import SwiftUI
import OpenAPIClient
import Combine
import core

@MainActor
class FilmDetailsViewModel: ObservableObject {
    @Published var film: FilmSearchResponseFilms
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    @Injected var api: ApiService?
    
    init(film: FilmSearchResponseFilms) {
        self.film = film
    }
    
    var posterUrl: String {
        guard let year = film.posterUrl else { return "" }
        return year
    }
    
    var year: String {
        guard let year = film.year else { return "Год неизвестен" }
        return "Год: \(year)"
    }
    
    var rating: String {
        guard let rating = film.rating else { return "Рейтинг: Нет" }
        return String(format: "Рейтинг: %.1f", rating)
    }
    
    var fullTitle: String {
        return film.nameRu ?? film.nameEn ?? film.nameRu ?? "Без названия"
    }
    
    var description: String {
        return film.description ?? "Описание отсутствует"
    }
    
    var hasPoster: Bool {
        return film.posterUrl != nil && !film.posterUrl!.isEmpty
    }
}
