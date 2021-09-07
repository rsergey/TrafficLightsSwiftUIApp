//
//  ContentView.swift
//  TrafficLightsSwiftUIApp
//
//  Created by Sergey on 07.09.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var text = "START"
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircle(color: Color(.sRGB,
                                         red: 1,
                                         green: 0,
                                         blue: 0,
                                         opacity: redOpacity)
                )
                ColorCircle(color: Color(.sRGB,
                                         red: 1,
                                         green: 1,
                                         blue: 0,
                                         opacity: yellowOpacity)
                )
                ColorCircle(color: Color(.sRGB,
                                         red: 0,
                                         green: 1,
                                         blue: 0,
                                         opacity: greenOpacity)
                )
                Spacer()
                Button(action: buttonTapped) {
                    ButtonView(title: text)
                }
            }
        }
    }
    
    private func buttonTapped() {
        if text == "START" {
            text = "NEXT"
            redOpacity = 1
        } else {
            let opacity = greenOpacity
            greenOpacity = yellowOpacity
            yellowOpacity = redOpacity
            redOpacity = opacity
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
