//
//  ContentView.swift
//  task_2
//
//  Created by Vyahirev.Mihail on 12.03.2026.
//

import SwiftUI
import OpenAPIClient
import core
import RswiftResources

struct ContentView: View {
    @State private var selectedCategory: Category = .films
    @Namespace private var animation
    
    enum Category: String, CaseIterable {
        case films
            case series
            case cartoons
            case anime
            
            var localizedString: String {
                switch self {
                case .films:
                    return R.string.localizable.films()
                case .series:
                    return R.string.localizable.series()
                case .cartoons:
                    return R.string.localizable.cartoons()
                case .anime:
                    return R.string.localizable.anime()
                }
            }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(Category.allCases, id: \.self) { category in
                        VStack(spacing: 6) {
                            Text(category.localizedString)
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
                FilmsList(searchText: "Terminator", title: R.string.localizable.films())
            case .series:
                FilmsList(
                    searchText: "Dr House",
                    title: R.string.localizable.series()
                )
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
