//
//  ContentView.swift
//  task_2
//
//  Created by Vyahirev.Mihail on 12.03.2026.
//

import SwiftUI
import OpenAPIClient

struct ContentView: View {
    @State private var selectedCategory: Category = .films
    @Namespace private var animation
    
    enum Category: String, CaseIterable {
        case films = "Фильмы"
        case series = "Сериалы"
        case cartoons = "Мультфильмы"
        case anime = "Аниме"
    }
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(Category.allCases, id: \.self) { category in
                        VStack(spacing: 6) {
                            Text(category.rawValue)
                                .font(.system(.body, design: .rounded))
                                .fontWeight(selectedCategory == category ? .semibold : .regular)
                                .foregroundColor(selectedCategory == category ? .blue : .gray)
                        }
                        .flyAway(isActive: category == selectedCategory)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                selectedCategory = category
                            }
                        }
                        .frame(width: 80, height: 40)
                    }
                }
                .padding(.horizontal)
            }
            .padding(.top, 10)
            .ignoresSafeArea(.all, edges: .bottom)
            
            Divider()
            
            switch selectedCategory {
            case .films:
                FilmsList(searchText: "Terminator", title: "Фильмы")
            case .series:
                FilmsList(searchText: "Dr House", title: "Сериалы")
            default:
                PlaceholderView(category: selectedCategory.rawValue)
            }
        }
    }
}

struct PlaceholderView: View {
    let category: String
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "film.stack")
                .font(.system(size: 60))
                .foregroundColor(.gray)
            Text("Контент для категории \"\(category)\"")
                .font(.title2)
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
