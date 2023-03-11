//
//  LogInTextFieldStack.swift
//  SShop
//
//  Created by Виктор on 11.03.2023.
//

import SwiftUI

struct LogInTextFieldStack: View {
    @State var spacing: CGFloat
    var body: some View {
        VStack(spacing: spacing) {
            MainTextField(inputValue: "", placeholderText: "First name")
            PasswordSecureField(inputValue: "")
        }
    }
}

struct LogInTextFieldStack_Previews: PreviewProvider {
    static var previews: some View {
        LogInTextFieldStack(spacing: 35)
    }
}
