//
//  BigButtonView.swift
//  SShop
//
//  Created by Виктор on 11.03.2023.
//

import SwiftUI

struct BigButtonView: View {
    @State var text: String
    var body: some View {
        Button {
            print("tap")
        } label: {
            HStack{
                Spacer()
                Text(text)
                    .font(.montserratBold(ofSize: 15))
                Spacer()
            }
        }
        .buttonStyle(BigButtonStyle())
    }
}

struct BigButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BigButtonView(text: "Button")
    }
}
