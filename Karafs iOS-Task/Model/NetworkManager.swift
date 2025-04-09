//
//  NetworkManager.swift
//  Karafs iOS-Task
//
//  Created by Aran Fononi on 9/4/25.
//

import SwiftUI
import Alamofire
import RealmSwift

class NetworkManager {
    
    static let shared = NetworkManager()
    
    func fetchData() {
        AF.request("https://dummyjson.com/products").responseDecodable(of: ProductModel.self) { response in
            switch response.result {
            case .success(let data):
                do {
                    let realm = try Realm()
                    
                    try realm.write {
                        for product in data.products {
                            let obj = ProductObject()
                            obj.id = product.id
                            obj.title = product.title
                            obj.desc = product.description
                            obj.price = product.price
                            obj.rating = product.rating
                            obj.discountPercentage = product.discountPercentage
                            obj.stock = product.stock
                            obj.sku = product.sku
                            
                            realm.add(obj, update: .modified)
                        }
                    }
                    
                } catch {
                    print("Realm error: \(error)")
                }
                
                
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
}
