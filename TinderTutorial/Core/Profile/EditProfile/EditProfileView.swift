//
//  EditProfileView.swift
//  TinderTutorial
//
//  Created by Ilona on 6/17/25.
//

import SwiftUI

struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var bio = ""
    let user: User
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ProfileImageGridView(user: user)
                    .padding()
                
                VStack(spacing: 24) {
                    VStack(alignment: .leading) {
                        Text("ABOUT ME")
                            .font(.headline)
                        TextField("\(user.fullname)", text: .constant(""))
                        
                        TextField("Add a bio...", text: $bio, axis: .vertical)
                            .padding()
                            .frame(height: 64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                    }
                }
                .padding(.horizontal)
            }
            .scrollIndicators(.hidden)
            .navigationTitle(Text("Edit Profile"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") { dismiss( ) }
                }
            }
            
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") { dismiss( ) }
                }
            }
            .fontWeight(.semibold)
        }
    }
}

#Preview {
    EditProfileView(user: MockData.users[0])
}
