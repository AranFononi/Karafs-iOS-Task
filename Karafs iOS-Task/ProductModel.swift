//
//  ProductModel.swift
//  Karafs iOS-Task
//
//  Created by Aran Fononi on 9/4/25.
//

import Foundation

struct ProductModel: Codable {
    let products: [Product]
}

struct Product: Codable {
    let id: Int
    let title: String
    let description: String
    let price: Double
    let discountPercentage : Double
    let stock: Int
    let sku : String
}
