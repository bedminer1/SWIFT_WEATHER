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
                
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("12°C")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                
                Spacer()
                    .frame(height: 60)
                
                HStack(spacing: 10) {
                    VStack(spacing: 2) {
                        Text("TUE")
                            .font(.system(size: 23, weight: .medium))
                            .foregroundColor(.white)
                        
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("12°C")
                            .font(.system(size: 23, weight: .medium))
                            .foregroundColor(.white)
                    }
                    
                    VStack(spacing: 2) {
                        Text("WED")
                            .font(.system(size: 23, weight: .medium))
                            .foregroundColor(.white)
                        
                        Image(systemName: "sun.max.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("14°C")
                            .font(.system(size: 23, weight: .medium))
                            .foregroundColor(.white)
                    }
                    
                    VStack(spacing: 2) {
                        Text("THU")
                            .font(.system(size: 23, weight: .medium))
                            .foregroundColor(.white)
                        
                        Image(systemName: "cloud.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("11°C")
                            .font(.system(size: 23, weight: .medium))
                            .foregroundColor(.white)
                    }
                    
                    VStack(spacing: 2) {
                        Text("FRI")
                            .font(.system(size: 23, weight: .medium))
                            .foregroundColor(.white)
                        
                        Image(systemName: "wind")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("10°C")
                            .font(.system(size: 23, weight: .medium))
                            .foregroundColor(.white)
                    }
                    
                    VStack(spacing: 2) {
                        Text("SAT")
                            .font(.system(size: 23, weight: .medium))
                            .foregroundColor(.white)
                        
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("13°C")
                            .font(.system(size: 23, weight: .medium))
                            .foregroundColor(.white)
                    }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
