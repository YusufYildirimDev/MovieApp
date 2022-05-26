//  MovieCellViewTest.swift
//  MovieTests
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.


@testable import Movie

final class SearchedMovieCellViewTest: SearhedMovieCellProtocol {
    var invokeSetTitle = false
    
    func setTitle(_ text: String) {
        invokeSetTitle = true
    }
}
