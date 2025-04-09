//
//  ProductDetailView.swift
//  Karafs iOS-Task
//
//  Created by Aran Fononi on 9/4/25.
//

import SwiftUI

struct ProductDetailView: View {
    var productName: String
    var productPrice: Double
    var productRating: Double
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 16) {
                Text(productName)
                    .font(.system(size: 23, weight: .bold))
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                RateView(rate: productRating, rateFontSize: 22)
                    .font(.system(size: 20))
                    
            } //: VStack
            .padding(.top, 30)
            
        } //: VStack
    }
}

#Preview {
    ProductDetailView(productName: "Essence Mascara Lash Princess", productPrice: 9.99, productRating: 4.1)
}
