//  NetworkManager.swift
//  Movie
//  Created by Yusuf Muhammet Yıldırım on 4/24/22.

import Alamofire
import Foundation

final class MovieNetworkManager {

     static let shared: MovieNetworkManager = {
        let instance = MovieNetworkManager()
        return instance
    }()
    
     func isConnectedToInternet() -> Bool {
        return NetworkReachabilityManager()?.isReachable ?? false
    }
    
     func request<T: Decodable>(_ request: URLRequestConvertible, completion: @escaping (Result<T, Error>) -> ()) {
        AF.request(request).responseData { response in
            if case .success(let data) = response.result {
                guard let response = try? JSONDecoder().decode(T.self, from: data) else {
                    print("JSON Decode Error")
                    return
                }
                completion(.success(response))
            } else if case .failure(let error) = response.result {
                print("JSON Decode Failure: \(error.localizedDescription)")
                completion(.failure(error))
            }
        }
    }
}
