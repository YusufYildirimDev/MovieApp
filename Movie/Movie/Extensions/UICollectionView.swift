//  UICollectionView.swift
//  Movie
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.

import UIKit

extension UICollectionView {
    
    func register(cellType: UICollectionViewCell.Type) {
        register(cellType.nib, forCellWithReuseIdentifier: cellType.identifier)
    }
    
    func dequeCell<T: UICollectionViewCell>(cellType: T.Type, indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: cellType.identifier, for: indexPath) as? T else { fatalError("UICollectionView Extension dequeCell Fatal Error") }
        return cell
    }
    
    func setEachRowOneCell() {
        let config = UICollectionLayoutListConfiguration(appearance: .plain)
        let layout = UICollectionViewCompositionalLayout.list(using: config)
        collectionViewLayout = layout
        autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
}
