//
//  Page1TitleText.swift
//  SShop
//
//  Created by Виктор on 12.03.2023.
//

import SwiftUI

struct Page1TitleText: View {
    var titleText: String
    var _titleText: [String] {
        return titleText.split(separator: " ").map(String.init)
    }
    var body: some View {
        HStack {
            ForEach(0..<_titleText.count, id: \.self) { index in
                Text(self._titleText[index])
                    .font(.montserratBold(ofSize: 22))
                    .foregroundColor(index == (_titleText.count - 1) ? .purple1 : .black)
            }
        }
    }
}

struct Page1TitleText_Previews: PreviewProvider {
    static var previews: some View {
        Page1TitleText(titleText: "Title text")
    }
}
