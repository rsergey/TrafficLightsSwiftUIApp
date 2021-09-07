//
//  ColorCircle.swift
//  TrafficLightsSwiftUIApp
//
//  Created by Sergey on 07.09.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 110, height: 110)
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: 5)
            )
            .padding(15)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black).ignoresSafeArea()
            ColorCircle(color: .green)
        }
    }
}
