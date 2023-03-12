//
//  SearchTextFieldView.swift
//  SShop
//
//  Created by Виктор on 12.03.2023.
//

import SwiftUI

struct SearchTextFieldView: View {
    @State var inputText: String
    var body: some View {
        ZStack(alignment: .trailing) {
            TextField("", text: $inputText)
                .textFieldStyle(OvalTextFieldStyle(backgroundColor: .lightGray6))
                .placeholder(when: inputText.isEmpty, alignment: .center) {
                    Text("What are you looking for ?")
                        .foregroundColor(.lightGray2)
                        .font(.montserratRegular(ofSize: 12))
            }
            Button {
                print("Search")
            } label: {
                Image.magnifyingGlass
                    .renderingMode(.template)
                    .foregroundColor(.darkGray1)
                    .padding(.trailing, 17.5)
            }

        }
    }
}

struct SearchTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTextFieldView(inputText: "")
    }
}
