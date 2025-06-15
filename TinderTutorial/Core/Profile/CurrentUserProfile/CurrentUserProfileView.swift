//
//  CurrentUserProfileView.swift
//  TinderTutorial
//
//  Created by Ilona on 6/15/25.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user: User
    var body: some View {
        NavigationStack{
            List{
                // header view
                CurrentUserProfileHeaderView(user: user)
                
                // account info
                Section("Account Info") {
                    HStack {
                        Text("Name")
                        Spacer()
                        Text(user.fullname)
                    }
                    HStack {
                        Text("Email")
                        Spacer()
                        Text("example@example.com")
                    }
                }
                
                // legal
                Section("Legal") {
                    Text("Terms of Service")
                    Text("Privacy Policy")
                }
                
                // logout
                Section {
                    Button("Logout") {}
                }
                .foregroundStyle(.red)
                // delete
                Section {
                    Button("Delete") {}
                }
                .foregroundStyle(.red)
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: MockData.users.first!)
}
