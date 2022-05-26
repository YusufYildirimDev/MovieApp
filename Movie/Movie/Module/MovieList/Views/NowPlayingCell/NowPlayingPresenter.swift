//  NowPlayingPresenter.swift
//  Movie
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.

// MARK: - PROTOCOLS
protocol NowPlayingCellPresenterProtocol: AnyObject {
    func load()
}

// MARK: - CLASS
final class NowPlayingCellPresenter {
    private weak var view: NowPlayingCellProtocol?
    private let movie: Movie
    
    init(view: NowPlayingCellProtocol?, movie: Movie) {
        self.view = view
        self.movie = movie
    }
}

// MARK: - EXTENSIONS
extension NowPlayingCellPresenter: NowPlayingCellPresenterProtocol {
    func load() {
        guard let poster = movie.posterPath else { return }
        view?.setImage(poster)
        guard let title = movie.originalTitle,
              let year = movie.releaseDate else { return }
        view?.setTitle("\(title) (\(year.prefix(4)))")
    }
}
