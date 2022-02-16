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
    
    @State private var button = "Start"
    
    @State private var redLight = 0.2
    @State private var yellowLight = 0.2
    @State private var greenLight = 0.2
    
    @State private var currentLight = CurrentLight.red
    
    private func changeColor() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.2
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLight = lightIsOff
            redLight = lightIsOn
        case .yellow:
            currentLight = .green
            redLight = lightIsOff
            yellowLight = lightIsOn
        case .green:
            currentLight = .red
            greenLight = lightIsOn
            yellowLight = lightIsOff
        }
    }
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack(spacing: 20.0) {
                ColorCircle(color: .red, opacity: redLight)
                ColorCircle(color: .yellow, opacity: yellowLight )
                ColorCircle(color: .green, opacity: greenLight)
                
                Spacer()
                
                ColorButtonChange(title: button) {
                    if button == "Start"{
                        button = "Next"
                    }
                    changeColor()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
