//
//  Movie.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/4/21.
//

import Foundation

struct Movie {
    var id: String = UUID().uuidString
    var title: String
    var poster: String
    var categories: [String]
    var year: Int
    var rating: String
    var numberOfEpisodes: Int?
    
    var episodes: [Episode]?
    var similarMovies: [Movie]
}
