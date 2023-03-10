//
//  TextFieldsStack.swift
//  SShop
//
//  Created by Виктор on 10.03.2023.
//

import SwiftUI

struct TextFieldsStack: View {
    var spacing: CGFloat
    var body: some View {
        let textFieldNames = [
            "First name",
            "Last name",
            "Email"
        ]
        VStack(spacing: spacing) {
            ForEach(textFieldNames, id: \.self) { item in
                MainTextField(inputValue: "", placeholderText: item)
            }
        }
    }
}

struct TextFieldsStack_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldsStack(spacing: 35)
    }
}
