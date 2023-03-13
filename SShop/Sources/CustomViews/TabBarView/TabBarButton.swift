//
//  TabBarButton.swift
//  SShop
//
//  Created by Виктор on 12.03.2023.
//

import SwiftUI

struct TabBarButton: View {
    var setupConfiguration: TabBarCase
    @Binding var activateConfiguration: TabBarCase
    var isActive: Bool {
        setupConfiguration == activateConfiguration
    }
    var imageConfiguration: Image {
        switch setupConfiguration {
        case .home:
            return Image.home
        case .favorite:
            return Image.favorite
        case .cart:
            return Image.cart
        case .message:
            return Image.message
        case .profile:
            return Image.profile
        }
    }
    var body: some View {
        GeometryReader { geometry in
            Button {
                activateConfiguration = setupConfiguration
            } label: {
                imageConfiguration
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(isActive ? .darkGray2 : .lightGray4)
                    .frame(width: geometry.size.width * 3/8, height: geometry.size.width * 3/8)
                    .scaledToFit()
                    .makeIsActiveLabel(isActive)
                    .frame(width: geometry.size.width, height: geometry.size.width)
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

struct TabBarButton_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButton(setupConfiguration: .profile, activateConfiguration: .constant(.profile))
    }
}
