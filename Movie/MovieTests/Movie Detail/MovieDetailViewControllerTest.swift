//  MovieDetailViewControllerTest.swift
//  MovieTests
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.


@testable import Movie
import UIKit

final class MovieDetailViewControllerTest: MovieDetailViewControllerProtocol {
    var invokeSetupCollectionView = false
    var invokeSetTitle = false
    var invokeSetMovieTitle = false
    var invokeSetMovieOverview = false
    var invokeSetRate = false
    var invokeSetReleaseDate = false
    var invokeSetMoviePoster = false
    var invokeSetFavoriteStatus = false
    
    func reloadData() {}
    func showAlert() {}
    
    func setupCollectionView() {
        invokeSetupCollectionView = true
    }
    
    func setTitle(_ text: String) {
        invokeSetTitle = true
    }
    
    func setMovieTitle(_ text: String) {
        invokeSetMovieTitle = true
    }
    
    func setMovieOverview(_ text: String) {
        invokeSetMovieOverview = true
    }
    
    func setRate(_ text: String) {
        invokeSetRate = true
    }
    
    func setReleaseDate(_ text: String) {
        invokeSetReleaseDate = true
    }
    
    func setMoviePoster(_ urlString: String) {
        invokeSetMoviePoster = true
    }
    
    func setFavoriteStatus(_ status: Bool) {
        invokeSetFavoriteStatus = true
    }
}
