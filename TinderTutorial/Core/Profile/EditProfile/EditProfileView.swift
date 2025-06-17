//
//  EditProfileView.swift
//  TinderTutorial
//
//  Created by Ilona on 6/17/25.
//

import SwiftUI

struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
            }
            .scrollIndicators(.hidden)
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
    EditProfileView()
}
