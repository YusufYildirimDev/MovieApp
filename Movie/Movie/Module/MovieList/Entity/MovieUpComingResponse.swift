//  MovieUpComingResponse.swift
//  Movie
//  Created by Yusuf Muhammet Yıldırım on 4/28/22.

import Foundation


struct MovieUpComingResponse: Codable {
    let dates: Dates
    let page: Int
    let results: [UpComingInfo]
    let totalPages: Int
    let totalResults: Int
}

struct Dates: Codable {
    let maximum: String
    let minimum: String
}

struct UpComingInfo: Codable {
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

    enum MovieUpComingCodingKeys: String, CodingKey {
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
}

