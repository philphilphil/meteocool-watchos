//
//  RainView.swift
//  meteocool WatchKit Extension
//
//  Created by Phil Baum on 31.10.21.
//

import SwiftUI
import Foundation

struct RainView: View {
    @State var rainForecastData: [Frame] = []
    @State var selectedTime: String = ""
    @State var selectedBar: UUID = UUID()
    @State private var scrollAmount = 1.0
    @State var scroll: Double = 0.0
    @State var scrolling: Bool = false
    
    var body: some View {
        VStack {
   
            
            GeometryReader { geometry in
                ScrollViewReader { proxy in
                    HStack {
                        Button("Now") {
                            withAnimation {
                                proxy.scrollTo(rainForecastData[23].id)
                            }
                        }
                        Button("Refresh") {
                            print("asd")
                        }
                    }
                    
                    HStack {
                        Text("Fellbach").font(.body)
                        Text(self.selectedTime).font(.footnote)
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .bottom, spacing: 1) {
                            
                            let barWidth = geometry.size.width / 14
                            let highestPossibleRainAmount = 95 + 32.5 // adjusted
                            
                            ForEach(rainForecastData) { forecastData in
                                // cap rain amount at 95 and compensate for the negative value (-32,5) it starts with
                                let rainAmount = CGFloat.minimum(95, forecastData.dbz) + 32.5;
                                
                                // calc high of bar relative to size of bar container
                                let barHeightRatio = geometry.size.width / highestPossibleRainAmount
                                let barHeight = rainAmount * barHeightRatio
                                let indicatorActive = forecastData.id == rainForecastData[23].id ? true : false
                                
                                Bar(barHeight: barHeight, barWidth: barWidth, rainAmountDBZ: forecastData.dbz, indicatorActive: indicatorActive)
                                    .id(forecastData.id)
                            }
                        }
//                        .digitalCrownRotation($scroll, from: 0, through: 20.0, by: 1, sensitivity: .low, isContinuous: false, isHapticFeedbackEnabled: true)
//                        .onChange(of: scroll) { value in
//                            print("crown")
//                        }
                        .frame(
                            minWidth: 0,
                            maxWidth: .infinity,
                            minHeight: 0,
                            maxHeight: .infinity,
                            alignment: .bottomLeading
                        )
                        
                    }
                    .onAppear {
                        Api().loadRainForecast { (result) in
                            self.rainForecastData = result.frames.array.sorted { $0.timestamp < $1.timestamp }
                            //dump(self.rainForecastData)
                            self.selectedBar = self.rainForecastData[0].id
                            
                            let date = Date(timeIntervalSince1970: self.rainForecastData[0].timestamp)
                            let formatter = DateFormatter()
                            formatter.locale = Locale(identifier: "de_DE")
                            formatter.setLocalizedDateFormatFromTemplate("HH:mm")
                            self.selectedTime = formatter.string(from: date)
                            proxy.scrollTo(rainForecastData[23].id)
                        }
                    }
                    
                    
                }
            }
        }

    }
}

struct RainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RainView()
                .previewDevice("Apple Watch Series 6 - 44mm")
            RainView()
                .previewDevice("Apple Watch Series 6 - 40mm")
        }
    }
}
