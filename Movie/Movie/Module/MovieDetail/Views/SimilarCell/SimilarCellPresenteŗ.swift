//  SimilarCellPresenter.swift
//  Movie
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.

//MARK: - PROTOCOLS
protocol SimilarCellPresenterProtocol: AnyObject {
    func load()
}

//MARK: - CLASS
final class SimilarCellPresenter {
    private weak var view: SimilarCellProtocol?
    private let movie: Movie

    init(view: SimilarCellProtocol, movie: Movie) {
        self.view = view
        self.movie = movie
    }
}

//MARK: - EXTENSIONS
extension SimilarCellPresenter: SimilarCellPresenterProtocol {
    func load() {
        
        guard let poster = movie.posterPath else { return }
        self.view?.setImage(poster)
        
        guard let title = movie.originalTitle else { return }
        view?.setTitle(title)
    }
}
