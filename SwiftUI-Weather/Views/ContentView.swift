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
                
                HStack(spacing: 14) {
                    DailyWeather(dayOfWeek: "TUE", image: "cloud.sun.fill", temperature: "12°C")
                    DailyWeather(dayOfWeek: "WED", image: "sun.max.fill", temperature: "14°C")
                    DailyWeather(dayOfWeek: "THU", image: "cloud.fill", temperature: "11°C")
                    DailyWeather(dayOfWeek: "FRI", image: "wind", temperature: "10°C")
                    DailyWeather(dayOfWeek: "SAT", image: "cloud.sun.fill", temperature: "13°C")
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
