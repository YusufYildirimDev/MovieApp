//  MovieSearchResponse.swift
//  Movie
//  Created by Yusuf Muhammet Yıldırım on 4/28/22.

import Foundation

//MARK: - MovieSourceResponse
struct MovieSourceResponse: Decodable {
    let page: Int?
    let totalPages: Int?
    let totalResults: Int?
    let results: [Movie]?
    
    enum CodingKeys: String, CodingKey {
        case totalPages = "total_pages"
        case totalResults = "total_results"
        case page, results
    }
}

//MARK: - Movie
struct Movie: Decodable {
    let id: Int?
    let originalLanguage: String?
    let originalTitle: String?
    let overview: String?
    let posterPath: String?
    let releaseDate: String?
    let voteAverage: Double?
    let voteCount: Int?
    
    enum CodingKeys: String, CodingKey {
        case id,overview
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}



