//  UICollectionViewCell.swift
//  Movie
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.

import UIKit

extension UICollectionViewCell {
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}
