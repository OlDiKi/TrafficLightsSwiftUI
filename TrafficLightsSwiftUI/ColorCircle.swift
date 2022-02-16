//
//  ColorCircle.swift
//  TrafficLightsSwiftUI
//
//  Created by Дмитрий Олейнер on 16.02.2022.
//

import SwiftUI

struct ColorCircle: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 120, height: 120)
            .overlay(Circle().stroke(Color.black, lineWidth: 6))
            .shadow(radius: 5)
            .opacity(opacity)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 1)
    }
}
