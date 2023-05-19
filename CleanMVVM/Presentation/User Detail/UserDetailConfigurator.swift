//
//  UserDetailConfigurator.swift
//  CleanMVVM
//
//  Created by Alexander Korchak on 19.05.2023.
//

import Foundation

final class UserDetailConfigurator {
    public static func configureUserDetailsView(with user: User) -> UserDetailView {
        let userDetailView = UserDetailView(viewModel: UserDetailViewModel(user: user))
        return userDetailView
    }
}
