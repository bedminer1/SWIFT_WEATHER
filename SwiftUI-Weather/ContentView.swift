//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Alex on 2/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack {
                    Image(systemName: "cloud.sun.fill")
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
