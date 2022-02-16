//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Дмитрий Олейнер on 16.02.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack(spacing: 30) {
                ColorCircle(color: .red)
                ColorCircle(color: .yellow)
                ColorCircle(color: .green)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
