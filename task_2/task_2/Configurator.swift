//
//  Configurator.swift
//  task_2
//
//  Created by Vyahirev.Mihail on 21.03.2026.
//

import Foundation
import core

class Configurator {
    public init() { }
    static let shared = Configurator()
    
    func register() {
        ServiceLocator.shared.addServices(service: ApiService())
        ServiceLocator.shared.addServices(service: LocalStorage())
    }
}
