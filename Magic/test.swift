//
//  test.swift
//  Magic
//
//  Created by Ehsan Rahimi on 2/21/24.
//

import SwiftUI

struct test: View {
    
    enum CardinalPoint: Double, CaseIterable {
        case north = 0
        case east = 90
        case south = 180
        case west = 270
        case north_360 = 360
        
        // SF Symbol (↗) is 45 degrees rotated, so we substract it to compensate
        var angle: Angle { .degrees(self.rawValue - 45.0) }
    }
    var body: some View {
        VStack(spacing: 30) {
            VStack {
                Text(Image(systemName: "location.fill"))
                    .font(.system(size: 100))
            }
            .padding(20)
            .background(.gray, in: Circle())
            .phaseAnimator(CardinalPoint.allCases) { content, phase in
                content
                    .rotationEffect(phase.angle)

            } animation: { phase in
                switch phase {
                case .north:
                    // no animation avoids the pointer to turn counterclockwise
                    .linear(duration: 0)
                case .east:
                    .bouncy(extraBounce: 0.1)
                case .south:
                    .bouncy(extraBounce: 0.3)
                case .west:
                    .bouncy(extraBounce: 0.1)
                case .north_360:
                    .bouncy
                }
            }
        }
    }
}

#Preview {
    test()
}

