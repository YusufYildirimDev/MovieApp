//  MovieDetailInteractorTest.swift
//  MovieTests
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.


@testable import Movie

final class MovieDetailInteractorTest: MovieDetailInteractorProtocol {
    var invokeFetchMovieDetail = false
    var invokeFetchSimilarMovies = false
    
    func fetchMovieDetail(id: Int) {
        invokeFetchMovieDetail = true
    }
    
    func fetchSimilarMovies(id: Int) {
        invokeFetchSimilarMovies = true
    }
}
