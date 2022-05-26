//  MovieListInteractorTest.swift
//  MovieTests
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.

@testable import Movie

final class MovieListInteractorTest: MovieListInteractorProtocol {
    var invokeFetchMovieNowPlaying = false
    var invokeFetchMovieUpcoming = false
    var invokeFetchSearchMovie = false
    
    func fetchMovieNowPlaying() {
        invokeFetchMovieNowPlaying = true
    }
    
    func fetchMovieUpcoming() {
        invokeFetchMovieUpcoming = true
    }
    
    func fetchSearchMovie(query: String) {
        invokeFetchSearchMovie = true
    }
}
