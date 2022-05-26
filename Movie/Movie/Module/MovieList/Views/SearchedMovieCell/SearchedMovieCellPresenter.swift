//  SearchedMovieCellPresenter.swift
//  Movie
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.


//MARK: - PROTOCOLS
protocol SearchedMovieCellPresenterProtocol: AnyObject {
    func load()
}

//MARK: - CLASS
final class SearchedMovieCellPresenter {
    private weak var view: SearhedMovieCellProtocol?
    private let movie: Movie
    
    init(view: SearhedMovieCellProtocol?, movie: Movie) {
        self.view = view
        self.movie = movie
    }
}

//MARK: - EXTENSIONS
extension SearchedMovieCellPresenter: SearchedMovieCellPresenterProtocol {
    func load() {
        guard let title = movie.originalTitle else { return }
        view?.setTitle(title)
    }
}
