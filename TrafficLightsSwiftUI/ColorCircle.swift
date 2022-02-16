//
//  ColorCircle.swift
//  TrafficLightsSwiftUI
//
//  Created by Дмитрий Олейнер on 16.02.2022.
//

import SwiftUI

struct ColorCircle: View {
    
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 10))
            .shadow(radius: 10)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red)
    }
}
