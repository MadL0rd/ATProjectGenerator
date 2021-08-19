//
//  Errors.swift
//  ClubhouseAvatarMaker
//
//  Created by Антон Текутов on 07.03.2021.
//

import Alamofire

enum NetworkServiceError: Int, Error {
    case cannotParceData
    case unknown
    case badToken = 201
    case badRoute = 404
    case badRequestDataFormat = 500
    
    var localizedDescription: String {
        switch self {
        case .cannotParceData:
            return .res.cannotParceData()
        case .unknown:
            return .res.unknownError()
        case .badToken:
            return .res.badToken()
        case .badRoute:
            return .res.badRoute()
        case .badRequestDataFormat:
            return .res.badRequestDataFormat()
        }
    }
}

enum RequestBuildError: Error {
    case cannotCreateUrl
}
