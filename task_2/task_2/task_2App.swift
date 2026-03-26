//
//  task_2App.swift
//  task_2
//
//  Created by Vyahirev.Mihail on 12.03.2026.
//

import SwiftUI

@main
struct task_2App: App {
    
    init() {
        Configurator.shared.register()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
