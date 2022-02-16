//
//  ColorButtonChange.swift
//  TrafficLightsSwiftUI
//
//  Created by Дмитрий Олейнер on 16.02.2022.
//

import SwiftUI

struct ColorButtonChange: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .foregroundColor(Color.white)
        }
        .padding()
        .frame(width: 120, height: 50)
        .background(Color.black)
        .cornerRadius(60)
        .shadow(radius: 5)
    }
}

struct ColorButtonChange_Previews: PreviewProvider {
    static var previews: some View {
        ColorButtonChange(title: "Start",
                          action: {})
    }
}
