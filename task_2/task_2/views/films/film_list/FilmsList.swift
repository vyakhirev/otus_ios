//
//  FilmsList.swift
//  task_2
//
//  Created by Vyahirev.Mihail on 15.03.2026.
//

import SwiftUI
import OpenAPIClient
import core
import DesignSystem

struct FilmsList: View {
    @StateObject private var viewModel: FilmsListViewModel
    
    init(searchText: String, title: String) {
        _viewModel = StateObject(wrappedValue: FilmsListViewModel(
            searchText: searchText,
            title: title
        ))
    }
    
    var body: some View {
        NavigationView {
            List {
                if viewModel.isLoading && viewModel.films.isEmpty {
                    ProgressView()
                        .frame(maxWidth: .infinity, alignment: .center)
                } else {
                    ForEach(viewModel.films, id: \.id) { film in
                        NavigationLink {
                            FilmsDetails(film: film)
                        } label: {
                            HStack(spacing: 12) {
                                AsyncImageView(url: film.posterUrl, width: 60, height: 90)
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
                            .onAppear {
                                if viewModel.shouldLoadMore(film) {
                                    Task {
                                        await viewModel.loadMoreFilms()
                                    }
                                }
                            }
                        }
                    }
                }
                
                if viewModel.isLoadingMore {
                    HStack {
                        Spacer()
                        ProgressView()
                        Spacer()
                    }
                }
            }
            .navigationTitle($viewModel.title)
            .searchable(text: $viewModel.searchText)
            .onSubmit(of: .search) {
                viewModel.search()
            }
            .alert("Ошибка", isPresented: .constant(viewModel.errorMessage != nil)) {
                Button("OK") {
                    viewModel.errorMessage = nil
                }
            } message: {
                Text(viewModel.errorMessage ?? "")
            }
        }
        .task {
            await viewModel.loadFilms()
        }
    }
}
