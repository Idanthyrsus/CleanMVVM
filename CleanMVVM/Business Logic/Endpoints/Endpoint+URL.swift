//
//  Endpoint+Extensions.swift
//  CleanMVVM
//
//  Created by Alexander Korchak on 19.05.2023.
//

import Foundation

extension Endpoint {
    
    var url: URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "dummyapi.io"
        components.path = "/data/v1" + path
        components.queryItems = queryItems
        
        guard let url = components.url else {
            preconditionFailure("Invalid URL components: \(components)")
        }
        return url
    }
    
    var headers: [String: Any] {
        return [
            "app-id" : "64678a871e95556578908686"
        ]
    }
}


