//
//  meteocoolApp.swift
//  meteocool WatchKit Extension
//
//  Created by Phil Baum on 29.10.21.
//

import SwiftUI

@main
struct meteocoolApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
