//
//  MainTextField.swift
//  SShop
//
//  Created by Виктор on 10.03.2023.
//

import SwiftUI

struct MainTextField: View {
    @State var inputValue: String
    var placeholderText: String
    var body: some View {
        TextField(
            "",
            text: $inputValue
        )
        .textFieldStyle(OvalTextFieldStyle())
        .placeholder(when: inputValue.isEmpty, alignment: .center) {
            Text(placeholderText)
                .foregroundColor(.textGray2)
                .font(.montserratRegular(ofSize: 12))
        }
    }
}

struct MainTextField_Previews: PreviewProvider {
    static var previews: some View {
        MainTextField(inputValue: "", placeholderText: "Enter")
    }
}

