//
//  AnimationModifier.swift
//  task_2
//
//  Created by Vyahirev.Mihail on 15.03.2026.
//

import SwiftUI


struct FlyAwayModifier: ViewModifier {
    let isActive: Bool
    
    func body(content: Content) -> some View {
        content
            .scaleEffect(isActive ? 1.2 : 1.0)
            .offset(y: isActive ? -8 : 0)
            .opacity(isActive ? 1.0 : 0.8)
            .animation(.spring(response: 0.4, dampingFraction: 0.7), value: isActive)
    }
}

// Расширение для удобного использования
extension View {
    func flyAway(isActive: Bool) -> some View {
        self.modifier(FlyAwayModifier(isActive: isActive))
    }
}
