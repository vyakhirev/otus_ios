//
//  FilmsDetails.swift
//  task_2
//
//  Created by Vyahirev.Mihail on 15.03.2026.
//

import SwiftUI
import OpenAPIClient
import DesignSystem

struct FilmsDetails: View {
    @StateObject private var viewModel: FilmDetailsViewModel
    let film: FilmSearchResponseFilms
    
    init(film: FilmSearchResponseFilms) {
        _viewModel = StateObject(wrappedValue: FilmDetailsViewModel(film: film))
        self.film = film
    }
    
    var body: some View {
        VStack {
            AsyncImageView(url: viewModel.posterUrl)
            VStack(alignment: .leading, spacing: 4) {
                Text(viewModel.fullTitle)
                    .font(.headline)
                Text(viewModel.description)
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
