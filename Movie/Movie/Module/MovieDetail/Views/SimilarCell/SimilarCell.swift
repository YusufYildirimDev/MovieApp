//  SimilarCellCollectionViewCell.swift
//  Movie
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.

import UIKit

//MARK: - PROTOCOLS
protocol SimilarCellProtocol: AnyObject {
    func setTitle(_ text: String)
    func setImage(_ urlString: String)
}

//MARK: - CLASS
final class SimilarCell: UICollectionViewCell {
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    
    var cellPrensenter: SimilarCellPresenterProtocol! {
        didSet {
            cellPrensenter.load()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        styleImageView()
    }
    
    private func styleImageView() {
        imageView.layer.cornerRadius = 10
    }
}

//MARK: - EXTENSIONS
extension SimilarCell: SimilarCellProtocol {
    func setTitle(_ text: String) {
        titleLabel.text = text
    }
    
    func setImage(_ urlString: String) {
        imageView.pullImageFromTheMovieDB(urlString)
    }
}
