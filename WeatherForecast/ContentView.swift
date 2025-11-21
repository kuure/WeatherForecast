//
//  ContentView.swift
//  WeatherForecast
//
//  Created by jlk on 11/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
            DayForecast(day: "Tue", isRainy: true, high: 80, low: 40)
            DayForecast(day: "Wed", isRainy: false, high: 60, low: 10)
            
        }
    }
}


struct DayForecast: View {
    
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int

    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        }
        else {
            return "sun.max.fill"
        }
    }

    var iconColor: Color {
        if isRainy {
            return Color.blue
        }
        else {
            return Color.yellow
        }
    }

    var body: some View {
        VStack {
            Text(day)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
            Text("High: \(high)º")
            Text("Low: \(low)º")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
