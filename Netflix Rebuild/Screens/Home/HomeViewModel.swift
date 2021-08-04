//
//  HomeViewModel.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/4/21.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        return movies.keys.map { String($0) }
    }
    
    public func getMovies(for category: String) -> [Movie] {
        return movies[category] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    private func setupMovies() {
        movies["Popular on Netflix"] = popularMockMovieList
        movies["Trending Now"] = mockMovieList
        movies["Asian Show"] = asianMockMovieList
        movies["Top Action Films"] = actionMovie
    }
}
