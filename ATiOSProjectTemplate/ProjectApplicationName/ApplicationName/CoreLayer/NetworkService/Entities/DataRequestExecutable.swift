//
//  DataRequestExecutable.swift
//  ClubhouseAvatarMaker
//
//  Created by <#author#> on <#date#>.
//

import Alamofire

protocol DataRequestExecutable {
    
    var execute: DataRequest { get }
}

extension DataRequest: DataRequestExecutable {
    
    var execute: DataRequest {
        return self
    }
}
