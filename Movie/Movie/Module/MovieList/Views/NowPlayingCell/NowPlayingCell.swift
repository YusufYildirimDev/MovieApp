//  NowPlayingCellCollectionViewCell.swift
//  Movie
// Created by Yusuf Muhammet Yıldırım on 5/4/22.

import UIKit

//MARK: - PROTOCOLS
protocol NowPlayingCellProtocol: AnyObject {
    func setTitle(_ text: String)
    func setImage(_ urlString: String)
}

//MARK: - CLASS
final class NowPlayingCell: UICollectionViewCell {
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var movieTitle: UILabel!
    
    var cellPresenter: NowPlayingCellPresenterProtocol! {
        didSet {
            cellPresenter.load()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}

//MARK: - EXTENSIONS
extension NowPlayingCell: NowPlayingCellProtocol {
    func setTitle(_ text: String) {
        movieTitle.text = text
    }
    
    func setImage(_ urlString: String) {
        imageView.pullImageFromTheMovieDB(urlString)
    }
}
