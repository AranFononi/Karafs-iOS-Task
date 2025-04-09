//
//  ProductModel.swift
//  Karafs iOS-Task
//
//  Created by Aran Fononi on 9/4/25.
//

import Foundation
import RealmSwift

struct ProductModel: Codable {
    let products: [Product]
}

struct Product: Codable {
    let id: Int
    let title: String
    let rating: Double
    let description: String
    let price: Double
    let discountPercentage : Double
    let stock: Int
    let sku : String
}

class ProductObject: Object, Identifiable {
    @Persisted(primaryKey: true) var id: Int
    @Persisted var title: String
    @Persisted var desc: String
    @Persisted var rating: Double
    @Persisted var price: Double
    @Persisted var discountPercentage: Double
    @Persisted var stock: Int
    @Persisted var sku: String
}

