//
//  SignInView.swift
//  SShop
//
//  Created by Виктор on 10.03.2023.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Sign In")
                    .font(.montserratSemiBold(ofSize: 26))
                    .padding(.bottom, geometry.size.height / 10)
                TextFieldsStack(spacing: geometry.size.height / 20)
                    .padding(.bottom, geometry.size.height / 20)
                    .coordinateSpace(name: "textFieldCoordinate")
                Button {
                    print("tap")
                } label: {
                    HStack{
                        Spacer()
                        Text("Sign in")
                            .font(.montserratBold(ofSize: 15))
                        Spacer()
                    }
                }
                .buttonStyle(BigButtonStyle())
                .padding(.bottom, geometry.size.height / 50)
                LogInStack()
                    .padding(.bottom, geometry.size.height / 10)
                SingInServiceStack(spacing: geometry.size.height / 20)
            }
            .padding(.horizontal, geometry.size.width / 10)
            .padding(.vertical, geometry.size.height / 8)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
