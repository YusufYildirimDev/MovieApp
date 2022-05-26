//  SimilarCellTest.swift
//  MovieTests
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.


import XCTest
@testable import Movie

final class SimilarCellTest: XCTestCase {
    var presenter: SimilarCellPresenter!
    var view: SimilarCellViewTest!
    var movie: Movie!
    
    override func setUp() {
        super.setUp()
        
        movie = Movie(id: 1, originalLanguage: "Test", originalTitle: "Test", overview: "Test", posterPath: "Test", releaseDate: "Test", voteAverage: 0, voteCount: 0)
        view = .init()
        presenter = .init(view: view, movie: movie)
    }
    
    override func tearDown() {
        presenter = nil
        view = nil
        movie = nil
    }
    
    func test_view_invokes() {
        XCTAssertFalse(view.invokeSetTitle)
        XCTAssertFalse(view.invokeSetImage)
        presenter.load()
        XCTAssertTrue(view.invokeSetTitle)
        XCTAssertTrue(view.invokeSetImage)
    }
}
