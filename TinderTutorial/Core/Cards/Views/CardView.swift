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
    @State private var currentImageIndex: Int = 0
    
    @State private var mockImages = [
        "jane_1",
        "jane_2",
        "jane_3",
    ]
    var body: some View {
        ZStack(alignment: .bottom){
            ZStack(alignment: .top) {
                Image(mockImages[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .overlay {
                        ImageScrollingOverlayView(currentImageIndex: $currentImageIndex, imageCount: $mockImages.count)
                    }
                
                CardImageIndicatorView(currentImgeIndex: currentImageIndex, imageCount: mockImages.count)
                SwipeActionIndicatorView(xOffset: $xOffset)
            }
            
            UserInfoView()
                .padding(.horizontal, 50)
        }
        
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
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
        
        if abs(width) <= abs(SizeConstants.screenCutoff) {
            xOffset = 0
            degrees = 0
        }
        
    }
}

#Preview {
    CardView()
}
