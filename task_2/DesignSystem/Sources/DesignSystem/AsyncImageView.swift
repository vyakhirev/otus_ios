//  AsyncImage.swift
//  DesignSystem
//
//  Created by Vyahirev.Mihail on 26.03.2026.
//

import SwiftUI

public struct AsyncImageView: View {
    let url: String?
    let width: CGFloat
    let height: CGFloat
    let cornerRadius: CGFloat
    let placeholderImage: String
    
    public init(
        url: String?,
        width: CGFloat = .infinity,
        height: CGFloat = 200,
        cornerRadius: CGFloat = 8,
        placeholderImage: String = "photo"
    ) {
        self.url = url
        self.width = width
        self.height = height
        self.cornerRadius = cornerRadius
        self.placeholderImage = placeholderImage
    }
    
    public var body: some View {
        AsyncImage(url: URL(string: url ?? "")) { phase in
            switch phase {
            case .empty:
                ProgressView()
                    .frame(maxWidth: width, minHeight: height)
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: width, minHeight: height)
                    .clipped()
                    .cornerRadius(cornerRadius)
            case .failure:
                Image(systemName: placeholderImage)
                    .frame(maxWidth: width, minHeight: height)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(cornerRadius)
            @unknown default:
                EmptyView()
            }
        }
    }
}
