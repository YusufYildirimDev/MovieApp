//  SplashInteractor.swift
//  Movie
//  Created by Yusuf Muhammet Yıldırım on 5/4/22.

//MARK: - PROTOCOLS
protocol SplashInteractorProtocol: AnyObject {
    func checkInternetConnection()
}

protocol SplashInteractorOutputProtocol: AnyObject {
    func internetConnection(status: Bool)
}

//MARK: - CLASS
final class SplashInteractor {
    var output: SplashInteractorOutputProtocol?
}

//MARK: - EXTENSIONS
extension SplashInteractor: SplashInteractorProtocol {
    func checkInternetConnection() {
        let internetStatus = MovieNetworkManager.shared.isConnectedToInternet()
        self.output?.internetConnection(status: internetStatus)
    }
}
