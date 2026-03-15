//
//  FilmsPaginationModifier.swift
//  task_2
//
//  Created by Vyahirev.Mihail on 12.03.2026.
//

import SwiftUI
import OpenAPIClient

extension View {
    func pagination(films: Binding<[FilmSearchResponseFilms]>, page: Binding<Int>,searchText: Binding<String>) -> some View {
        modifier(PaginationModifier(films: films, page: page, searchText: searchText))
    }
}

struct PaginationModifier: ViewModifier {
    @Binding var films: [FilmSearchResponseFilms]
    @Binding var page: Int
    @Binding var searchText: String

    func body(content: Content) -> some View {
        content.task {
            do {
                let list = try await FilmsAPI.apiV21FilmsSearchByKeywordGet(
                    keyword: searchText,
                    page: page
                )
                films.append(contentsOf: list.films)
                page += 1
            } catch { }
        }
    }
}
