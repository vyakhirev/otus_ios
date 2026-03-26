//
//  ApiService.swift
//  core
//
//  Created by Vyahirev.Mihail on 21.03.2026.
//

import OpenAPIClient

public class ApiService {
    
    public init() { }
    
    public func searchByKeyword(keyword: String, page: Int = 1) async throws -> FilmSearchResponse {
        return try await FilmsAPI.apiV21FilmsSearchByKeywordGet(keyword: keyword, page: page)
    }
}
