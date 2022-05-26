//  MovieCell.swift
//  Movie
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.

import UIKit

//MARK: - PROTOCOLS
protocol MovieCellProtocol: AnyObject {
    func setTitle(_ text: String)
    func setDescription(_ text: String)
    func setReleaseDate(_ text: String)
    func setImage(_ urlString: String)
}

//MARK: - CLASS
final class MovieCell: UITableViewCell {
    @IBOutlet private weak var movieImageView: UIImageView!
    @IBOutlet private weak var movieTitle: UILabel!
    @IBOutlet private weak var movieDescription: UILabel!
    @IBOutlet private weak var movieReleaseDate: UILabel!
    
    var cellPresenter: MovieCellPresenterProtocol! {
        didSet {
            cellPresenter.load()
        }
    }
}

//MARK: - EXTENSIONS
extension MovieCell: MovieCellProtocol {
    func setTitle(_ text: String) {
        movieTitle.text = text
    }
    
    func setDescription(_ text: String) {
        movieDescription.text = text
    }
    
    func setReleaseDate(_ text: String) {
        movieReleaseDate.text = text
    }
    
    func setImage(_ urlString: String) {
        movieImageView.pullImageFromTheMovieDB(urlString)
    }
}
