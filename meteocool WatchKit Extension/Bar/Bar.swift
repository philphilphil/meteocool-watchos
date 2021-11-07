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
    var indicatorActive: Bool = false
    @State var indicatorColor: Color = .white
    
    var body: some View {
        VStack {
            VStack {
                Rectangle()
                    .frame(width: barWidth, height: barHeight, alignment: .bottom)
                    .foregroundColor(CMAP_NWS[dbz2index(dbz: rainAmountDBZ)])
                    .cornerRadius(2)
                    .offset(x: 0, y: 6)
                Rectangle()
                    .frame(width: barWidth, height: 5, alignment: .bottom)
                    .foregroundColor(indicatorColor)
                    .zIndex(10)
                    .shadow(radius: 2)
                    .onAppear {
                        if indicatorActive {
                            self.indicatorColor = .red
                        }
                    }
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
