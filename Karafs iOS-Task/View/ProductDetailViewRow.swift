//
//  ProductDetailViewRow.swift
//  Karafs iOS-Task
//
//  Created by Aran Fononi on 9/4/25.
//

import SwiftUI

struct ProductDetailViewRow: View {
    
    var productRowTitle: String
    var productRowLabel: String
    var productRowIcon: String {
        switch productRowTitle {
        case "price":
            return "dollarsign"
        case "discount":
            return "percent"
        case "stock":
            return "barcode"
        case "sku":
            return "tag"
        default:
            return "circle.dashed"
        }
    }
    
    var body: some View {
        LabeledContent {
            Text(productRowLabel)
                .foregroundStyle(.primary)
                .fontWeight(.medium)
            
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.primary.opacity(0.3))
                        .frame(width: 30 , height: 30)
                    Image(systemName: productRowIcon)
                        .foregroundStyle(.secondary)
                        .fontWeight(.semibold)
                    
                }
                
                Text(productRowTitle.capitalized)
                    .foregroundStyle(.primary)
                    .fontWeight(.bold)
            }
        }
        
    }
}


#Preview {
    ProductDetailViewRow(productRowTitle: "price", productRowLabel: String(9.99))
}
