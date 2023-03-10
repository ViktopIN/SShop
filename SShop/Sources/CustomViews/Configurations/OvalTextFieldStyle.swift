//
//  OvalTextFieldStyle.swift
//  SShop
//
//  Created by Виктор on 10.03.2023.
//

import SwiftUI

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(5)
            .background(Color.textGray1)
            .font(Font.montserratMedium(ofSize: 14))
            .clipShape(Capsule())
            .multilineTextAlignment(.center)
    }
}
