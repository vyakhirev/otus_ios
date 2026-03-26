//
//  ServiceLocator.swift
//  core
//
//  Created by Vyahirev.Mihail on 21.03.2026.
//

import Foundation

public class ServiceLocator {
    
    public init() { }
    
    public nonisolated(unsafe) static let shared = ServiceLocator()
    
    public lazy var services: [String: AnyObject] = {
        return [String:AnyObject]()
    }()
    
    public func addServices<T:AnyObject>(service: T) {
        let key = String(describing: T.self)
        if services[key] == nil {
            services[key] = service
        }
    }
    
    public func resolve<T:AnyObject>(type: T.Type)->T? {
        let key = String(describing: type)
        return services[key] as? T
    }
}
