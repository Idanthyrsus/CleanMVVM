//
//  ContentView.swift
//  CleanMVVM
//
//  Created by Alexander Korchak on 19.05.2023.
//

import SwiftUI

struct UsersView: View {
    
    @ObservedObject var viewModel: UsersViewModel
    
    
    var body: some View {
        NavigationView {
            List(viewModel.users.data) { user in
                NavigationLink {
                    UsersRouter.destinationForTappedUser(user: user)
                } label: {
                    Text(user.firstName)
                }
            }.navigationTitle("Users")
        }.onAppear {
            viewModel.onAppear()
        }
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView(viewModel: UsersViewModel())
    }
}
