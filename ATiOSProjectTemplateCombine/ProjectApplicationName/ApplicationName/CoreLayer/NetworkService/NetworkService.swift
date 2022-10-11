//
//  NetworkService.swift
//  ClubhouseAvatarMaker
//
//  Created by <#author#> on <#date#>.
//

import Alamofire
import Combine

class NetworkService {
    
    final func makeDefaultRequest<T: Codable>(dataRequest: DataRequestExecutable, completion: @escaping DefaultRequestCompletion<T>) {
        dataRequest.execute
            .response { response in
                switch response.result {
                case .success:
                    guard let data = response.data,
                          let parcedData: T = DataParser.parse(data: data)
                    else { completion(.failure(.cannotParceData)); return }
                    completion(.success(parcedData))
                    
                case .failure:
                    if let code = response.error?.responseCode,
                       let error = NetworkServiceError(rawValue: code) {
                        completion(.failure(error))
                    }
                    else {
                        completion(.failure(.unknown))
                        return
                    }
                }
            }
    }
    
    final func makeRequestWithFuture<T: Codable>(dataRequest: DataRequestExecutable) -> NetworkServiceResultFuture<T> {
        return Future<T, NetworkServiceError> { promise in
            dataRequest.execute.response { response in
                guard let statusCode = response.response?.statusCode
                else { promise(.failure(.connectionProblems)); return }
                
                if statusCode >= 200 && statusCode <= 299,
                   T.self == NoReply.self {
                    promise(.success(NoReply() as! T))
                }
                
                if let data = response.data {
                    
                    if statusCode >= 200 && statusCode <= 299,
                       let parcedData: T = DataParser.parse(data: data) {
                        promise(.success(parcedData))
                    }
                    
                    promise(.failure(.cannotParceData))
                    return
                }
                
                if let error = NetworkServiceError(rawValue: statusCode) {
                    promise(.failure(error))
                    return
                }
                
                promise(.failure(.unknown))
            }
        }
    }
}
