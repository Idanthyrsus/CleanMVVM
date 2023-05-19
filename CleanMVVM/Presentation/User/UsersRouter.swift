//
//  UsersRouter.swift
//  CleanMVVM
//
//  Created by Alexander Korchak on 19.05.2023.
//

import SwiftUI

final class UsersRouter {
    public static func destinationForTappedUser(user: User) -> some View {
        return UserDetailConfigurator.configureUserDetailsView(with: user)
    }
}
