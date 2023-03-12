//
//  Page1TopView.swift
//  SShop
//
//  Created by Виктор on 12.03.2023.
//

import SwiftUI

struct Page1TopView: View {
    let profileImage: Image
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .trailing) {
                HStack(spacing: geometry.size.width / 7) {
                    Image.sideMenu
                        .resizable()
                        .scaledToFit()
                    Page1TitleText(titleText: "Trade by bata")
                    PhotoCircleView(profileImage: profileImage, strokeColor: .darkGray1)
                }
                HStack {
                    Image(systemName: "chevron.down")
                    Text("Location")
                }
            }
            .padding(.leading, geometry.size.width / 25)
            .padding(.trailing, geometry.size.width / 8)
        }
    }
}

struct Page1TopView_Previews: PreviewProvider {
    static var previews: some View {
        Page1TopView(profileImage: .ppl)
    }
}
