//
//  PasswordSecureField.swift
//  SShop
//
//  Created by Виктор on 11.03.2023.
//

import SwiftUI

struct PasswordSecureField: View {
    
    @State var isHide: Bool = true
    @State var inputValue: String
    
    var body: some View {
        ZStack(alignment: .trailing) {
            if isHide {
                SecureField("", text: $inputValue)
                    .textFieldStyle(OvalTextFieldStyle())
                    .placeholder(when: inputValue.isEmpty, alignment: .center) {
                        Text("Password")
                            .foregroundColor(.lightGray2)
                            .font(.montserratRegular(ofSize: 12))
                    }
            } else {
                MainTextField(inputValue: inputValue, placeholderText: "Password")
            }
            Button {
                isHide.toggle()
            } label: {
                Image.crossEye
                    .renderingMode(.template)
                    .foregroundColor(isHide ? Color.darkGray1 : .accentColor)
                    .padding(.trailing, 15)
            }
        }
    }
}

struct LogInSecureField_Previews: PreviewProvider {
    static var previews: some View {
        PasswordSecureField( inputValue: "")
    }
}
