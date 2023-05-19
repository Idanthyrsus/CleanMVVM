//
//  UserPictureService.swift
//  CleanMVVM
//
//  Created by Alexander Korchak on 19.05.2023.
//

import Foundation
import Combine

enum UserPictureError: Error {
    case dataInvalid
}

enum NetworkError: Error {
    case invalidUrl
}

protocol UserPictureServiceProtocol {
    var networker: NetworkerProtocol { get }
    
    func getAvatarData(urlString: String) -> AnyPublisher<Data, Error>
}

final class UserPictureService:UserPictureServiceProtocol {
    
    var networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
        self.networker = networker
    }
    
    func getAvatarData(urlString: String) -> AnyPublisher<Data, Error> {
        
        guard let url = URL(string: urlString) else {
            return Fail<Data, Error>(error: NetworkError.invalidUrl).eraseToAnyPublisher()
        }
        
        return networker.getData(url: url, headers: [:])
            .mapError { _ in UserPictureError.dataInvalid }
            .eraseToAnyPublisher()
    }
}
