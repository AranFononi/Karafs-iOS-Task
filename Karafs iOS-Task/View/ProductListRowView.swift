//
//  ProductListRowView.swift
//  Karafs iOS-Task
//
//  Created by Aran Fononi on 9/4/25.
//

import SwiftUI

struct ProductListRowView: View {
    var productTitle: String
    var productRate: Double
    var body: some View {
            // Background
            
            
            
            // Base
            HStack(alignment: .center, spacing: 16) {
                
                // Icon
                IconView(rate: productRate)
                                
                VStack(alignment:.leading, spacing: 8) {
                    
                    // Title
                        Text(productTitle)
                            .font(.system(size: 15, weight: .bold))
                            .foregroundStyle(.primary)
                            .lineLimit(1)
                    
                    
                    // Rate Stars
                    RateView(rate: productRate)
                    
                } //: VStack
            } //: HStack
    }
}

#Preview {
    ProductListRowView(productTitle: "Essence Mascara Lash Princess", productRate: 1.5)
}
