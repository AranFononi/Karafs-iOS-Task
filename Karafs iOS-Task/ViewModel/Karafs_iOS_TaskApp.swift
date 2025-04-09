//
//  Karafs_iOS_TaskApp.swift
//  Karafs iOS-Task
//
//  Created by Aran Fononi on 9/4/25.
//

import SwiftUI

@main
struct Karafs_iOS_TaskApp: App {
    var netRequest: () = NetworkManager().fetchData()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
