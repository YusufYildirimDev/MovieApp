//  MovieSimilerResponse.swift
//  Movie
//  Created by Yusuf Muhammet Yıldırım on 4/30/22.


import Foundation

struct MovieSimilerResponse: Codable {
    let page: Int
    let results: [SimilerInfo]
    let totalPages: Int
    let totalResults: Int
}

struct SimilerInfo: Codable {
    let posterPath: String
    let adult: Bool
    let overview: String
    let releaseDate: String
    let genreIds: [Int]
    let id: Int
    let originalTitle: String
    let originalLanguage: String
    let title: String
    let backdropPath: String
    let popularity: Int
    let voteCount: Int
    let video: Bool
    let voteAverage: Int
}

enum MovieSimilerCodingKeys: String, CodingKey {
    
    case adult, overview,dates, page, results,popularity,video,maximum,minimum
    case posterPath = "poster_path"
    case releaseDate = "release_date"
    case genreIds = "genre_ids"
    case originalTitle = "original_title"
    case totalPages = "total_pages"
    case totalResults = "total_results"
    case originalLanguage = "original_language"
    case backdropPath = "backdrop_path"
    case voteCount = "vote_count"
    case voteAverage = "vote_average"

}

//MARK: - MovieDetailResponse
struct MovieDetailResponse: Decodable {
    let id: Int?
    let homepage: String?
    let imdb_id: String?
    let original_language: String?
    let original_title: String?
    let overview: String?
    let poster_path: String?
    let release_date: String?
    let status: String?
    let vote_average: Double?
    let vote_count: Int?
}
