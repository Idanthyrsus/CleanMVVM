//
//  MoreInfoConfigurator.swift
//  CleanMVVM
//
//  Created by Alexander Korchak on 19.05.2023.
//

import Foundation

final class MoreInfoConfigurator {
    static func configureMoreInfoView(with user: User) -> MoreInfoView {
        let viewModel = MoreInfoViewModel(user: user)
        return MoreInfoView(viewModel: viewModel)
    }
}
