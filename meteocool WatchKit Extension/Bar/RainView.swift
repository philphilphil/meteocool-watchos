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
    
    var body: some View {
        VStack {
            HStack {
                Text("Fellbach").font(.body)
                //                    .onTapGesture {
                //                        test()
                //                    }
                Text("16:45").font(.footnote)
            }
            GeometryReader { geometry in
                HStack(alignment: .bottom, spacing: 1) {
                    
                    let barWidth = geometry.size.width / 12 - 2
                    
                    ForEach(rainForecastData) { forecastData in
                        
                        let highestPossibleRainAmount = 95 + 32.5 //added 32.5 to composate for value starting at -32,5
                        let adjustedRainAmount = CGFloat(forecastData.dbz) + 32.5
                        let rainAmount = CGFloat(forecastData.dbz) > 95 ? 95 : CGFloat(forecastData.dbz)
                        
                        let barHeightRatio = geometry.size.height / highestPossibleRainAmount
                        
                        let barHeight = (adjustedRainAmount > highestPossibleRainAmount ? highestPossibleRainAmount : adjustedRainAmount) * barHeightRatio
                        
                        Bar(barHeight: barHeight, barWidth: barWidth, rainAmountDBZ: rainAmount)
                        
                    }
                }
                .padding()
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .bottomLeading
                )
            }.padding()
        }
        .onAppear {
            Api().loadRainForecast { (result) in
                self.rainForecastData = result.frames.array.filter { $0.source == "nowcast_phys" }.sorted { $0.timestamp < $1.timestamp }
                dump(self.rainForecastData)
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
