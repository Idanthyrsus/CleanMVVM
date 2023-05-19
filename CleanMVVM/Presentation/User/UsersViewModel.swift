//
//  UsersViewModel.swift
//  CleanMVVM
//
//  Created by Alexander Korchak on 19.05.2023.
//

import Foundation
import Combine

class UsersViewModel: ObservableObject {
    @Published public var users: Users = Users(data: [])
    
    private var usersService: UsersServiceProtocol
    private var cancellables = Set<AnyCancellable>()
    
    init(users: Users = Users(data: []),
         usersService: UsersServiceProtocol = UserService()) {
        self.users = users
        self.usersService = usersService
    }
    
    public func onAppear() {
        self.getUsers(count: 40)
    }
    
    private func getUsers(count: Int) {
        usersService.getUsers(count: count)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error)
                case .finished:
                    break
                }
            } receiveValue: { [weak self] users in
                guard let self = self else {
                    return
                }
                self.users = users
            }
            .store(in: &cancellables)
    }
}
