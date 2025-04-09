//
//  RateView.swift
//  Karafs iOS-Task
//
//  Created by Aran Fononi on 9/4/25.
//

import SwiftUI

struct RateView: View {
    var rate: Double
    var rateFontSize: CGFloat = 15
    var body: some View {
        HStack {
            ForEach(0..<Int(rate), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.system(size: rateFontSize, weight: .medium))
                    .foregroundStyle(.secondary)
            }
            .padding(.horizontal, -4)
            if rate > Double(Int(rate)) {
                Image(systemName: "star.leadinghalf.filled")
                    .font(.system(size: rateFontSize, weight: .medium))
                    .foregroundStyle(.secondary)
                    .padding(.horizontal, -4)
            }
            Text("\(rate, format: .number.precision(.fractionLength(2)))")
                .font(.system(size: rateFontSize, weight: .medium))
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    RateView(rate: 4.2)
}
