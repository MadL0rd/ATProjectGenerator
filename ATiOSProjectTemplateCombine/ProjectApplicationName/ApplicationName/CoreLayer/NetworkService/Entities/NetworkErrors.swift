//
//  Errors.swift
//  ClubhouseAvatarMaker
//
//  Created by Антон Текутов on 07.03.2021.
//

import Alamofire

enum NetworkServiceError: Int, Error {
    
    case connectionProblems
    case unknown
    case cannotParceData
    case wrongCode
    case wrongEmail
    case unknownError
    case badToken = 201
    case badRoute = 404
    case badRequestDataFormat = 500
    
    var localizedDescription: String {
        switch self {
        case .cannotParceData:
            return .res.networkErrorCannotParceData()
        case .unknown:
            return .res.networkErrorUnknown()
        case .connectionProblems:
            return .res.networkErrorConnectionProblems()
        case .wrongCode:
            return .res.networkErrorWrongCode()
        case .wrongEmail:
            return .res.networkErrorWrongEmail()
        case .unknownError:
            return .res.networkErrorUnknownError()
        case .badToken:
            return .res.networkErrorBadToken()
        case .badRoute:
            return .res.networkErrorBadRoute()
        case .badRequestDataFormat:
            return .res.networkErrorBadRequestDataFormat()
        }
    }
}

enum RequestBuildError: Error {
    case cannotCreateUrl
}
