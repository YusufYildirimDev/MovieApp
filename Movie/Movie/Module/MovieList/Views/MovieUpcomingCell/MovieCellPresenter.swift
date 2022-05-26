//
//  MovieCellPresenter.swift
//  Movie
//
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.
//

//MARK: - PROTOCOLS
protocol MovieCellPresenterProtocol: AnyObject {
    func load()
}

//MARK: - CLASS
final class MovieCellPresenter {
    private weak var view: MovieCellProtocol?
    private let movie: Movie
    
    init(view: MovieCellProtocol?, movie: Movie) {
        self.view = view
        self.movie = movie
    }
}

//MARK: - EXTENSIONS
extension MovieCellPresenter: MovieCellPresenterProtocol {
    func load() {
        guard let title = movie.originalTitle else { return }
        view?.setTitle(title)
        guard let description = movie.overview else { return }
        view?.setDescription(description)
        guard let releaseDate = movie.releaseDate else { return }
        view?.setReleaseDate(releaseDate)
        guard let poster = movie.posterPath else { return }
        view?.setImage(poster)
    }
}
