//  MovieListViewControllerTest.swift
//  MovieTests
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.


@testable import Movie
import UIKit

final class MovieListViewControllerTest: MovieListViewControllerProtocol {
    
    var invokeReloadData = false
    var invokeSetupTableView = false
    var invokeSetupCollectionView = false
    var invokeSetupPageController = false
    var invokeSetupSearchController = false
    var invokeSetTitle = false
    var invokeChangeSlideWithPageControl = false
    var invokeSearchedTableViewStatus = false
    var invokeSlideHeaderSlider = false
    
    func reloadData() {
        invokeReloadData = true
    }
    
    func setupTableView() {
        invokeSetupTableView = true
    }
    
    func setupCollectionView() {
        invokeSetupCollectionView = true
    }
    
    func setupPageController(count: Int) {
        invokeSetupPageController = true
    }
    
    func setupSearchController() {
        invokeSetupSearchController = true
    }
    
    func setTitle(_ text: String) {
        invokeSetTitle = true
    }
    
    func changeSlideWithPageControl(index: Int) {
        invokeChangeSlideWithPageControl = true
    }
    
    func searchedTableViewStatus(_ status: Bool) {
        invokeSearchedTableViewStatus = true
    }
    
    func slideHeaderSlider(status: Bool) {
        invokeSlideHeaderSlider = true
    }
    
    var getSearchController: UISearchController?
}
