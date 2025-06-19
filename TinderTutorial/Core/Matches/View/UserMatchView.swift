//
//  UserMatchView.swift
//  TinderTutorial
//
//  Created by Ilona on 6/19/25.
//

import SwiftUI

struct UserMatchView: View {
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            Rectangle( )
                .fill(Color.black.opacity(0.7))
                .ignoresSafeArea(.all)
            
            VStack(spacing: 120) {
                VStack() {
                    Image(.match)
                        .resizable()
                        .scaledToFit( )
                        .padding( )
                    
                    Text("You liked each other!")
                        .foregroundStyle(.blue)
                }
                
                HStack(spacing: 16) {
                    Image(MockData.users[0].profileImageURLs.first ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay {
                            Circle()
                            .stroke(Color.white, lineWidth: 2)
                            .shadow(radius: 4)
                        }
                    
                    Image(MockData.users[1].profileImageURLs.first ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay {
                            Circle()
                            .stroke(Color.white, lineWidth: 2)
                            .shadow(radius: 4)
                        }
                }
                
                VStack {
                    Button("Send message") {
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 350, height: 44)
                    .background(.pink)
                    .clipShape(Capsule())
                    
                    Button("Keep swipping") {
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 350, height: 44)
                    .background(.clear)
                    .clipShape(Capsule())
                    .overlay {
                        Capsule()
                        .stroke(Color.white, lineWidth: 1)
                        .shadow(radius: 4)
                    }
                    
                }
            }
                
        }
    }
}

#Preview {
    UserMatchView(show: .constant(true))
}
