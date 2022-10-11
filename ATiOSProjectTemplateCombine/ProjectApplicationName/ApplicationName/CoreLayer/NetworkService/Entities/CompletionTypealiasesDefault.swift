//
//  CompletionTypealiasesDefault.swift
//  ClubhouseAvatarMaker
//
//  Created by <#author#> on <#date#>.
//

import Alamofire
import Combine

typealias DefaultRequestCompletion<T: Codable> = (Result<T, NetworkServiceError>) -> Void
typealias NetworkServiceResultFuture<ReturnType> = Future<ReturnType, NetworkServiceError>
