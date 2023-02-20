//
//  MyAppApp.swift
//  MyApp
//
//  Created by Ariel Elkin on 20/02/2023.
//

import SwiftUI

@main
struct MyAppApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
