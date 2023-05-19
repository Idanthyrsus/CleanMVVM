//
//  MoreInfoView.swift
//  CleanMVVM
//
//  Created by Alexander Korchak on 19.05.2023.
//

import SwiftUI

struct MoreInfoView: View {
    
    let viewModel: MoreInfoViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("ID: \(viewModel.user.id ?? "N/A")")
            Text("Full name: \(viewModel.user.firstName) \(viewModel.user.lastName)")
        }
    }
}

struct MoreInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MoreInfoView(viewModel: MoreInfoViewModel(user: User.fake()))
    }
}
