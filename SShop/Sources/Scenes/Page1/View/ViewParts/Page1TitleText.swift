//
//  Page1TitleText.swift
//  SShop
//
//  Created by Виктор on 12.03.2023.
//

import SwiftUI

struct Page1TitleText: View {
    var titleText: String
    var words: [String] {
        return titleText.split(separator: " ").map(String.init)
    }
    var lastWord: String {
        var _words = words
        return _words.removeLast()
    }
    
    var firstWord: String {
        let _words = words
        return _words.dropLast(1).joined(separator: " ")
    }
    
    var firstAttributedString: AttributedString {
        var result = AttributedString(firstWord)
        result.font = .montserratBold(ofSize: 22)
        result.foregroundColor = .black
        return result
       }
    var lastAttributedString: AttributedString {
        var result = AttributedString(lastWord)
        result.font = .montserratBold(ofSize: 22)
        result.foregroundColor = .purple1
        return result
       }
    
    var body: some View {
        Text(firstAttributedString + " " + lastAttributedString)
            .lineLimit(1)
    }
}

struct Page1TitleText_Previews: PreviewProvider {
    static var previews: some View {
        Page1TitleText(titleText: "Title text")
    }
}
