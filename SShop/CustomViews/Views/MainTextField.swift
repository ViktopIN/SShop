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
            placeholderText,
            text: $inputValue
        )
        .textFieldStyle(OvalTextFieldStyle())
    }
}

struct MainTextField_Previews: PreviewProvider {
    static var previews: some View {
        MainTextField(inputValue: "", placeholderText: "Enter")
    }
}

