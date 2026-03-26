//
//  FilmsList.swift
//  task_2
//
//  Created by Vyahirev.Mihail on 15.03.2026.
//

import SwiftUI
import OpenAPIClient
import core

struct FilmsList: View {
    @Injected var api:ApiService?
    @Injected var local:ApiService?

    @State var films = [FilmSearchResponseFilms]()
    @State var errorMessage: String?
    @State var isLoading = false
    @State var isLoadingMore = false
    @State var page = 1
    @State var searchText: String = ""
    @State var title: String = ""

    init(searchText: String, title: String) {
        _searchText = State(initialValue: searchText)
        _title = State(initialValue: title)
    }
    
    var body: some View {
        NavigationView {
            List {
                if isLoading && films.isEmpty {
                    ProgressView()
                        .frame(maxWidth: .infinity, alignment: .center)
                } else {
                    ForEach(films, id: \.id) { film in
                        NavigationLink {
                            FilmsDetails(film: film)
                        } label: {
                            HStack(spacing: 12) {
                                AsyncImage(url: URL(string: film.posterUrl ?? "")) { phase in
                                    switch phase {
                                    case .empty:
                                        ProgressView()
                                            .frame(width: 60, height: 90)
                                    case .success(let image):
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 60, height: 90)
                                            .cornerRadius(6)
                                    case .failure:
                                        Image(systemName: "photo")
                                            .frame(width: 60, height: 90)
                                            .background(Color.gray.opacity(0.2))
                                            .cornerRadius(6)
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
                                        .lineLimit(2)
                                }
                            }
                            .padding(.vertical, 4)
                        }
                    }
                }
                if !isLoadingMore {
                    HStack {
                        Spacer()
                        ProgressView()
                        Spacer()
                    }
                    .pagination(films: $films,page: $page,searchText: $searchText)
                }
            }
            .navigationTitle($title)
            .searchable(text: $searchText)
            .onSubmit(of: .search) {
                Task {
                    await loadFilms()
                }
            }
            .alert("Ошибка", isPresented: .constant(errorMessage != nil)) {
                Button("OK") {
                    errorMessage = nil
                }
            } message: {
                Text(errorMessage ?? "")
            }
        }
        .task {
            await loadFilms()
        }
    }
    
    func loadFilms() async {
        guard !searchText.isEmpty else { return }
        
        isLoading = true
        defer { isLoading = false }
        
        isLoadingMore = true
        defer { isLoadingMore = false }
        
        do {
            let list = try await FilmsAPI.apiV21FilmsSearchByKeywordGet(
                keyword: searchText,
                page: page
            )
            films = list.films
        } catch {
            await MainActor.run {
                errorMessage = error.localizedDescription
            }
        }
    }
}
