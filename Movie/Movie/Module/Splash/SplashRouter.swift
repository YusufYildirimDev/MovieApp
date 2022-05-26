//  SplashRouter.swift
//  Movie
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.

import UIKit

//MARK: - PROTOCOLS
protocol SplashRouterProtocol: AnyObject {
    func navigate(_ route: SplashRoutes)
}

//MARK: - ENUMS
enum SplashRoutes {
    case movieListScreen
}

//MARK: - CLASS
final class SplashRouter {
    weak var viewController: SplashViewController?

    static func setupModule() -> SplashViewController {
        let view = SplashViewController()
        let interactor = SplashInteractor()
        let router = SplashRouter()
        let presenter = SplashPresenter(view: view, interactor: interactor, router: router)

        view.presenter = presenter
        router.viewController = view
        interactor.output = presenter
        return view
    }
}

//MARK: - EXTENSIONS
extension SplashRouter: SplashRouterProtocol {
    func navigate(_ route: SplashRoutes) {
        switch route {
        case .movieListScreen:
            guard let window = viewController?.view.window else { return }
            let movieListVC = MovieListRouter.setupModule()
            let navigationController = UINavigationController(rootViewController: movieListVC)
            window.rootViewController = navigationController
       print("movieList sayfasına gidiliyor.")
        }
    }
}

