//
//  ProductViewModel.swift
//  Karafs iOS-Task
//
//  Created by Aran Fononi on 9/4/25.
//

import Foundation
import RealmSwift

class ProductViewModel: ObservableObject {
    @Published var products: [ProductObject] = []
    
    private var realm: Realm
    
    private var networkManager = NetworkManager.shared
    
    init() {
        do {
            let config = Realm.Configuration(
                schemaVersion: 1,
                migrationBlock: { migration, oldSchemaVersion in
                    if oldSchemaVersion < 1 {
                        
                    }
                }
            )

            Realm.Configuration.defaultConfiguration = config
            
            self.realm = try Realm()
            fetchProducts()
        } catch {
            print("Realm error: \(error)")
            self.realm = try! Realm()
        }
    }
    
    private func fetchProducts() {
        let results = realm.objects(ProductObject.self)
        
        if results.isEmpty {
            fetchProductsFromNetwork()
        } else {
            self.products = Array(results)
        }
    }
    
    private func fetchProductsFromNetwork() {
        Task {
            await networkManager.fetchData()
            loadProductsFromRealm()
        }
    }
    
    private func loadProductsFromRealm() {
        let results = realm.objects(ProductObject.self)
        self.products = Array(results)
    }
}
