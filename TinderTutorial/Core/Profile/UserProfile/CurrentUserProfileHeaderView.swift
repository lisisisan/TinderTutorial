//
//  CurrentUserProfileHeaderView.swift
//  TinderTutorial
//
//  Created by Ilona on 6/15/25.
//

import SwiftUI

struct CurrentUserProfileHeaderView: View {
    let user: User
    
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing) {
                Image(user.profileImageURLs.first ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    
                    // shadow
                    .background{
                        Circle()
                            .fill(Color(.systemGray6))
                            .frame(width: 128, height: 128)
                            .shadow(radius: 10)
                    }
                
                Image(systemName: "pencil")
                    .imageScale(.small)
                    .foregroundStyle(.gray)
                    .background{
                        Circle()
                            .fill(.white)
                            .frame(width: 32, height: 32)
                    }
                    .offset(x: -8, y: 10)
            }
            
            Text("\(user.fullname), \(user.age)")
                .font(.title2)
                .fontWeight(.light)
        }
        .frame(height: 240)
        // centered
        .frame(maxWidth: .infinity)
        .padding()
    }
}

#Preview {
    CurrentUserProfileHeaderView(user: MockData.users.first!)
}
