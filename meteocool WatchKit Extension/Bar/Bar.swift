//
//  Bar.swift
//  meteocool WatchKit Extension
//
//  Created by Phil Baum on 31.10.21.
//

import SwiftUI

func dbz2index(dbz: CGFloat) -> Int {
    return Int((dbz+32.5) * 2)
}

struct Bar: View {
    var barHeight: CGFloat
    var barWidth: CGFloat
    var rainAmountDBZ: CGFloat
    
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .frame(width: 5, height: barHeight, alignment: .bottom)
                    .foregroundColor(.white)
                    .zIndex(10)
                Rectangle()
                    .frame(width: barWidth, height: barHeight, alignment: .bottom)
                    .foregroundColor(CMAP_NWS[dbz2index(dbz: rainAmountDBZ)])
                    .cornerRadius(2)
                    .offset(x: -6, y: 0)
            }
        }
    }
}

struct Bar_Previews: PreviewProvider {
    static var previews: some View {
        Bar(barHeight: 11, barWidth: 30, rainAmountDBZ: 1)
        RainView()
    }
}
