//
//  LogInStack.swift
//  SShop
//
//  Created by Виктор on 10.03.2023.
//

import SwiftUI

struct LogInStack: View {
    var body: some View {
        HStack() {
            Text("Already have an account?")
                .foregroundColor(.lightGray3)
            .font(.montserratMedium(ofSize: 10))
            Button {
                print("tap")
            } label: {
                Text("Log in")
                    .foregroundColor(.linkBlue1)
                    .font(.montserratMedium(ofSize: 10))
            }
            Spacer()
        }
    }
}

struct LogInStack_Previews: PreviewProvider {
    static var previews: some View {
        LogInStack()
    }
}
