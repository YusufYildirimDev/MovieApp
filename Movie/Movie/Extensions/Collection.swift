//  Collection.swift
//  Movie
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.

extension Collection {
    func getAt(at index: Index?) -> Iterator.Element? {
        guard let index = index, indices.contains(index) else { return nil }
        return self[index]
    }
}
