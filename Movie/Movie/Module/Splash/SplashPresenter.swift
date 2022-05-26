//  SplashPresenter.swift
//  Movie
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.

import Foundation

//MARK: - PROTOCOLS
protocol SplashPresenterProtocol: AnyObject {
    func viewDidAppear()
}

//MARK: - CLASS
final class SplashPresenter {
    unowned var view: SplashViewControllerProtocol
    let router: SplashRouterProtocol!
    let interactor: SplashInteractorProtocol!

    init(view: SplashViewControllerProtocol, interactor: SplashInteractorProtocol, router: SplashRouterProtocol ) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

//MARK: - EXTENSIONS
extension SplashPresenter: SplashPresenterProtocol {
    func viewDidAppear() {
        interactor.checkInternetConnection()
    }
}

extension SplashPresenter: SplashInteractorOutputProtocol {
    func internetConnection(status: Bool) {
        if status {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.router.navigate(.movieListScreen)
            }
        } else {
            view.noInternetConnection()
        }
    }
}
