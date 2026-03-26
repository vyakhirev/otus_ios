//
//  FilmListViewModel.swift
//  task_2
//
//  Created by Vyahirev.Mihail on 26.03.2026.
//
import SwiftUI
import OpenAPIClient
import Combine
import core

@MainActor
class FilmsListViewModel: ObservableObject {
    @Published var films = [FilmSearchResponseFilms]()
    @Published var errorMessage: String?
    @Published var isLoading = false
    @Published var isLoadingMore = false
    @Published var page = 1
    @Published var searchText: String = ""
    @Published var title: String = ""
    
    @Injected var api: ApiService?
    
    private var currentTask: Task<Void, Never>?
    
    init(searchText: String = "", title: String = "") {
        self.searchText = searchText
        self.title = title
    }
    
    func loadFilms() async {
        guard !searchText.isEmpty else { return }
        
        isLoading = true
        defer { isLoading = false }
        
        do {
            let list = try await api!.searchByKeyword(
                keyword: searchText,
                page: page
            )
            films = list.films
        } catch {
            errorMessage = error.localizedDescription
        }
    }
    
    func loadMoreFilms() async {
        guard !searchText.isEmpty, !isLoadingMore else { return }
        
        isLoadingMore = true
        defer { isLoadingMore = false }
        
        page += 1
        
        do {
            let list = try await api!.searchByKeyword(
                keyword: searchText,
                page: page
            )
            films.append(contentsOf: list.films)
        } catch {
            errorMessage = error.localizedDescription
            // Rollback page on error
            page -= 1
        }
    }
    
    func search() {
        // Reset pagination when searching new keyword
        page = 1
        films.removeAll()
        
        currentTask?.cancel()
        currentTask = Task {
            await loadFilms()
        }
    }
    
    func shouldLoadMore(_ film: FilmSearchResponseFilms) -> Bool {
        guard let lastFilm = films.last else { return false }
        return film.id == lastFilm.id && !isLoading && !isLoadingMore
    }
}
