//
//  IconView.swift
//  Karafs iOS-Task
//
//  Created by Aran Fononi on 9/4/25.
//

import SwiftUI

struct IconView: View {
    
    var rate: Double
    
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
            return .orange
            case "face.smiling.inverse":
            return .green
            case "flame.fill":
            return .red
            default:
            return .blue
        }
    }
    
    var body: some View {
        Image(systemName: icon)
            .resizable()
            .scaledToFit()
            .foregroundStyle(iconColor)
            .frame(width: 30, height: 30)
    }
}

#Preview {
    IconView(rate: 4)
}
