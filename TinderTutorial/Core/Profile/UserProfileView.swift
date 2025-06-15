//
//  UserProfileView.swift
//  TinderTutorial
//
//  Created by Ilona on 6/15/25.
//

import SwiftUI

struct UserProfileView: View {
    @Environment(\.dismiss) var dismiss
    let user: User
    
    @State private var currentImageIndex = 0
    
    var body: some View {
        VStack{
            HStack{
                Text(user.fullname)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("\(user.age)")
                    .font(.title2)
                
                Spacer()
                    
                Button{
                    dismiss()
                } label: {
                    Image(systemName: "arrow.down.circle.fill")
                        .imageScale(.large)
                        .fontWeight(.bold)
                        .foregroundStyle(.pink)
                }
            }
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ZStack(alignment: .top) {
                        Image(user.profileImageURLs[currentImageIndex])
                            .resizable()
                            .scaledToFill()
                            .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
                            .overlay {
                                ImageScrollingOverlayView(currentImageIndex: $currentImageIndex, imageCount: user.profileImageURLs.count)
                            }
                        
                        CardImageIndicatorView(currentImgeIndex: currentImageIndex, imageCount: user.profileImageURLs.count)
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("About me")
                            .fontWeight(.semibold)
                        
                        Text("Some test bio...")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .font(.subheadline)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Essentials")
                    
                    HStack{
                        Image(systemName: "person")
                        Text("Woman")
                        Spacer()
                    }
                    
                    HStack{
                        Image(systemName: "arrow.down.forward.and.arrow.up.backward.circle")
                        Text("Straight")
                        Spacer()
                    }
                    
                    HStack{
                        Image(systemName: "book")
                        Text("Actress")
                        Spacer()
                    }
                }
                .padding()
                .background(Color(.secondarySystemBackground))
                .font(.subheadline)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
}

#Preview {
    UserProfileView(user: MockData.users.first!)
}
