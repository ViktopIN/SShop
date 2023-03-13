//
//  View+Extension.swift
//  SShop
//
//  Created by Виктор on 10.03.2023.
//

import SwiftUI

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            self
            placeholder().opacity(shouldShow ? 1 : 0)
        }
    }
    
    func makeIsActiveLabel(_ value: Bool) -> some View {
        ZStack {
            Circle()
                .foregroundColor(value ? .lightGray5 : .clear)
            self
        }
    }
    
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
