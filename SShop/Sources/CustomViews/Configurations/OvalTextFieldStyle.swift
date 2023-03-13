//
//  OvalTextFieldStyle.swift
//  SShop
//
//  Created by Виктор on 10.03.2023.
//

import SwiftUI

struct OvalTextFieldStyle: TextFieldStyle {
    var backgroundColor: Color = .lightGray1
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(5)
            .background(backgroundColor)
            .font(Font.montserratMedium(ofSize: 14))
            .clipShape(Capsule())
            .multilineTextAlignment(.center)
    }
}
