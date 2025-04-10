//
//  ProductDetailView.swift
//  Karafs iOS-Task
//
//  Created by Aran Fononi on 9/4/25.
//

import SwiftUI

struct ProductDetailView: View {
    @StateObject private var networkMonitor = NetworkMonitor()
    var productImage: [String]
    var productName: String
    var productPrice: Double
    var productRating: Double
    var productDiscount: Double
    var productStock: Int
    var productSku: String
    var productDescription: String
    
    
    var body: some View {
        VStack {
            if networkMonitor.isConnected {
                CoverImageView(coverImages: productImage)
            }
            HStack {
                VStack(alignment: .leading, spacing: 16) {
                    Text(productName)
                        .font(.system(size: 23, weight: .bold))
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                    RateView(rate: productRating, rateFontSize: 22)
                        .font(.system(size: 20))
                    
                } //: VStack
                .padding(.top, 20)
                .padding(.bottom, 30)
                .padding(.horizontal, 25)
                Spacer()
            }
            
            Text(productDescription)
                .font(.system(size: 15))
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 25)
                .padding(.bottom, 30)
            
            Section {
                ProductDetailViewRow(productRowTitle: "price", productRowLabel: "$ \(String(format: "%.2f", productPrice))")
                ProductDetailViewRow(productRowTitle: "discount", productRowLabel: "% \(String(format: "%.2f", productDiscount))")
                ProductDetailViewRow(productRowTitle: "stock", productRowLabel: String(productStock))
                ProductDetailViewRow(productRowTitle: "sku", productRowLabel: productSku)
            }
            .padding(.vertical, 17)
            .padding(.horizontal, 25)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(.horizontal, 15)
            
        } //: VStack
    }
}

#Preview {
    ProductDetailView(productImage: ["https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png"], productName: "Essence Mascara Lash Princess", productPrice: 9.99, productRating: 3.8, productDiscount: 7.17, productStock: 5, productSku: "BB6775D", productDescription: "Something For test here ok, ok, Something For test here ok, ok, Something For test here ok, ok, Something For test here ok, ok, Something For test here ok, ok, Something For test here ok, ok, Something For test here ok, ok, Something For test here ok, ok, Something For test here ok, ok")
}
