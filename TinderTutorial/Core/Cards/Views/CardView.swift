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
            ZStack(alignment: .top) {
                Image(.jane1)
                    .resizable()
                    .scaledToFill()
                
                SwipeActionIndicatorView(xOffset: $xOffset, screenCutoff: screenCutoff)
            }
            
            UserInfoView()
                .padding(.horizontal, 50)
        }
        
        .frame(width: cardWidth, height: cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        // snappy / swippe effect
        .rotationEffect(.degrees(degrees))
        // snapped back animation
        .animation(.snappy, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged (onDgagChanged)
                .onEnded (onDragEnded)
            )
    }
}

private extension CardView {
    func onDgagChanged(_ value: _ChangedGesture<DragGesture>.Value) {
        xOffset = value.translation.width
        degrees = Double(value.translation.width / 25)
    }
    
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        
        if abs(width) <= abs(screenCutoff) {
            xOffset = 0
            degrees = 0
        }
        
    }
}

private extension CardView {
    var screenCutoff: CGFloat {
        (UIScreen.main.bounds.width / 2) * 0.8
    }
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
