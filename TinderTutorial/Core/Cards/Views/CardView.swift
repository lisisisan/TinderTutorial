//
//  CardView.swift
//  TinderTutorial
//
//  Created by Ilona on 6/12/25.
//

import SwiftUI

struct CardView: View {
    // horizontal positioning
    @State private var xOffset: CGFloat = 0
    // rotating
    @State private var degrees: Double = 0
    var body: some View {
        ZStack(alignment: .bottom){
            Image(.jane1)
                .resizable()
                .scaledToFill()
            
            UserInfoView()
                .padding(.horizontal, 50)
        }
        
        .frame(width: cardWidth, height: cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        // snappy / swippe effect
        .rotationEffect(.degrees(degrees))
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    withAnimation(.snappy) {
                        xOffset = gesture.translation.width
                        degrees = Double(gesture.translation.width / 25)
                    }
                }
                
        )
    }
}

private extension CardView {
    var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }
    var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
    
}

#Preview {
    CardView()
}
