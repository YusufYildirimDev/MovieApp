//  MovieDetailResponse.swift
//  Movie
//  Created by Yusuf Muhammet Yıldırım on 4/30/22.

//MARK: - MovieDetailResponse
struct MovieDetailResponse: Decodable {
    let id: Int?
    let homePage: String?
    let imdbId: String?
    let originalLanguage: String?
    let originalTitle: String?
    let overview: String?
    let posterPath: String?
    let releaseDate: String?
    let status: String?
    let voteAverage: Double?
    let voteCount: Int?
}


enum CodingKeys: String, CodingKey {
    case id,overview,status
    case homePage = "homepage"
    case imdbId = "imdb_id"
    case originalLanguage = "original_language"
    case originalTitle = "original_title"
    case posterPath  = "poster_path"
    case releaseDate = "release_date"
    case voteAverage = "vote_average"
    case voteCount = "vote_count"
    
}

