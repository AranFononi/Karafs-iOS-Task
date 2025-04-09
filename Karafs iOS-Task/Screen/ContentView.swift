//
//  ContentView.swift
//  Karafs iOS-Task
//
//  Created by Aran Fononi on 9/4/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = ProductViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.products) { product in
                ProductListRowView(productTitle: product.title, productRate: product.rating)
            }
        }
    }
}

#Preview {
    ContentView()
}
