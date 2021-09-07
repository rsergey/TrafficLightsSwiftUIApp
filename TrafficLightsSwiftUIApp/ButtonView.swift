//
//  ButtonView.swift
//  TrafficLightsSwiftUIApp
//
//  Created by Sergey on 07.09.2021.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 170, height: 60)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 5)
                )
                .foregroundColor(.blue)
            Text(title)
                .font(.title)
                .bold()
                .foregroundColor(.white)
        }
        .padding(20)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            ButtonView(title: "START")
        }
    }
}
