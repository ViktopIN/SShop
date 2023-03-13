//
//  TabBarView.swift
//  SShop
//
//  Created by Виктор on 12.03.2023.
//

import SwiftUI

enum TabBarCase: Int {
    case home
    case favorite
    case cart
    case message
    case profile
}

struct TabBarView: View {
    @State var tabBarCase: TabBarCase
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {
                Rectangle()
                    .cornerRadius(20, corners: [.topLeft, .topRight])
                    .foregroundColor(.white)
                HStack(alignment: .center) {
                    TabBarButton(setupConfiguration: .home, activateConfiguration: $tabBarCase)
                    TabBarButton(setupConfiguration: .favorite, activateConfiguration: $tabBarCase)
                    TabBarButton(setupConfiguration: .cart, activateConfiguration: $tabBarCase)
                    TabBarButton(setupConfiguration: .message, activateConfiguration: $tabBarCase)
                    TabBarButton(setupConfiguration: .profile, activateConfiguration: $tabBarCase)
                }
                .padding(.horizontal, geometry.size.width / 20)
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(tabBarCase: .profile)
    }
}
