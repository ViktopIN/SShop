//
//  SingInServiceStack.swift
//  SShop
//
//  Created by Виктор on 10.03.2023.
//

import SwiftUI

struct SingInServiceStack: View {
    let spacing: CGFloat
    var body: some View {
        VStack(alignment: .leading, spacing: spacing) {
            SignInServiceButton(configuration: .google)
            SignInServiceButton(configuration: .apple)
        }
    }
}

struct SingInServiceStack_Previews: PreviewProvider {
    static var previews: some View {
        SingInServiceStack(spacing: 38)
    }
}
