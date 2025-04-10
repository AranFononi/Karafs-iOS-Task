//
//  IconView.swift
//  Karafs iOS-Task
//
//  Created by Aran Fononi on 9/4/25.
//

import SwiftUI

struct IconView: View {
    
    var rate: Double
    var size: CGFloat = 30
    
    var icon: String {
        switch rate {
        case 0...3 :
            return "eyes.inverse"
        case 3...4:
            return "face.smiling.inverse"
        case 4...:
            return "flame.fill"
        default:
            return "star.fill"
        }
    }
    
    var iconColor: Color {
        switch icon {
            case "eyes.inverse":
            return .red
            case "face.smiling.inverse":
            return .orange
            case "flame.fill":
            return .green
            default:
            return .blue
        }
    }
    
    var body: some View {
        Image(systemName: icon)
            .resizable()
            .scaledToFit()
            .foregroundStyle(iconColor)
            .frame(width: size, height: size)
            .symbolEffect(.breathe)
    }
}

#Preview {
    IconView(rate: 4)
}
