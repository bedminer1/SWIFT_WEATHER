//
//  Background.swift
//  SwiftUI-Weather
//
//  Created by Alex on 2/3/25.
//

import SwiftUI

struct Background: View {
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue ,
                                                   isNight ? .gray : Color("lightBlue")]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    Background(isNight: Binding.constant(false))
}
