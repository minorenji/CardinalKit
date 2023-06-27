//
//  ScanningUIView.swift
//  CardinalKit_Example
//
//  Created by Sean Lim on 6/27/23.
//  Copyright © 2023 CardinalKit. All rights reserved.
//

import SwiftUI

struct ScanningUIView: View {
    var date = ""
    let color: Color
    init(color: Color) {
        self.color = color
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM. d, YYYY"
        date = formatter.string(from: Date())
    }
    var body: some View {
        VStack {
            Text("woundcare")
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(self.color)
                .padding(.top, 10)
            Text("rhl_woundcare")
                .font(.system(size: 15, weight: .light))
            Text(date).font(.system(size: 18, weight: .regular)).padding()
        }
    }
}

struct ScanningUIView_Previews: PreviewProvider {
    static var previews: some View {
        ScanningUIView(color: Color.red)
    }
}
