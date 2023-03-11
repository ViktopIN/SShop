//
//  TitleStyleText.swift
//  SShop
//
//  Created by Виктор on 11.03.2023.
//

import SwiftUI

struct TitleStyleText: View {
    @State var text: String
    var body: some View {
        Text(text)
            .font(.montserratSemiBold(ofSize: 26))
    }
}

struct TitleStyleText_Previews: PreviewProvider {
    static var previews: some View {
        TitleStyleText(text: "Title")
    }
}

