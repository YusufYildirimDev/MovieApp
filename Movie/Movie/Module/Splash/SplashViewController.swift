//  SplashViewController.swift
//  Movie
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.

import UIKit

//MARK: - PROTOCOLS
protocol SplashViewControllerProtocol: AnyObject {
    func noInternetConnection()
}

//MARK: - CLASS
final class SplashViewController: BaseViewController {
    var presenter: SplashPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidAppear()
    }
}

//MARK: - EXTENSIONS
extension SplashViewController: SplashViewControllerProtocol {
    func noInternetConnection() {
        showAlert(title: "ERROR", message: "No Internet Connection, pleas check your connection")
        
    }
}
