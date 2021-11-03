//
//  RainView.swift
//  meteocool WatchKit Extension
//
//  Created by Phil Baum on 31.10.21.
//

import SwiftUI
import Foundation
import Alamofire


var rainAmounts = [10, 20, 50, 90, 95, 999, 70, 30, 0, -32.5, -32.5, 95]

struct RainView: View {
    @State var rainForecastData: [Frame] = []
    @State var selectedTime: String = ""
    @State var selectedBar: UUID = UUID()
    @State private var scrollAmount = 5.0
    
    var body: some View {
        VStack {
            HStack {
                Text("Fellbach").font(.body)
                Text(self.selectedTime).font(.footnote)
            }
            GeometryReader { geometry in
                ScrollView(.vertical, showsIndicators: true) {
                    VStack(alignment: .leading, spacing: 1) {
                        
                        let barHeight = geometry.size.width / 13
                        let highestPossibleRainAmount = 95 + 32.5 // adjusted
                        
                        ForEach(rainForecastData) { forecastData in
                            
                            // cap rain amount at 95 and compensate for the negative value (-32,5) it starts with
                            let rainAmount = CGFloat.minimum(95, forecastData.dbz) + 32.5;
   
                            // calc high of bar relative to size of bar container
                            let barHeightRatio = geometry.size.width / highestPossibleRainAmount
                            let barWidth = rainAmount * barHeightRatio
                            
                            Bar(barHeight: barHeight, barWidth: barWidth, rainAmountDBZ: forecastData.dbz)
                            
                        }
                    }
                    .frame(
                        minWidth: 0,
                        maxWidth: .infinity,
                        minHeight: 0,
                        maxHeight: .infinity,
                        alignment: .bottomLeading
                    )
                }
            }
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
