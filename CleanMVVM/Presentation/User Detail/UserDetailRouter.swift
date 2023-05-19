//
//  UserDetailRouter.swift
//  CleanMVVM
//
//  Created by Alexander Korchak on 19.05.2023.
//

import Foundation
import SwiftUI
 
final class UserDetailRouter {
    public static func destinationForMoreInfoAction(user: User) -> some View {
        return MoreInfoConfigurator.configureMoreInfoView(with: user)
    }
}
