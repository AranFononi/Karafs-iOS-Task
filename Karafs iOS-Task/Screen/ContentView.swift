//
//  ContentView.swift
//  Karafs iOS-Task
//
//  Created by Aran Fononi on 9/4/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = ProductViewModel()
    @StateObject private var networkMonitor = NetworkMonitor()
    
    var body: some View {
        NavigationView {
            List(viewModel.products) { product in
                
                NavigationLink(destination: ProductDetailView(productName: product.title, productPrice: product.price, productRating: product.rating, productDiscount: product.discountPercentage, productStock: product.stock, productSku: product.sku, productDescription: product.desc)) {
                    if networkMonitor.isConnected {
                        ProductListRowView(productTitle: product.title, productRate: product.rating, productThumbnail: product.thumbnail)
                    } else {
                        ProductListRowView(productTitle: product.title, productRate: product.rating)
                    }
                    
                }
                    
                    
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
