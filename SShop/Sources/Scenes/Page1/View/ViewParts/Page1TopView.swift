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
        HStack {
            Image.sideMenu
                .resizable()
                .scaledToFit()
            Spacer()
            Page1TitleText(titleText: "Trade by bata")
            Spacer()
            ZStack {
                PhotoCircleView(profileImage: profileImage, strokeColor: .darkGray1)
                HStack {
                    Text("Location")
                        .font(.montserratRegular(ofSize: 8))
                    Image(systemName: "chevron.down")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 6)
                }
                .offset(y: 35)
            }
        }
        .frame(height: 31)
    }
}

struct Page1TopView_Previews: PreviewProvider {
    static var previews: some View {
        Page1TopView(profileImage: .ppl)
    }
}
//    .frame(width: geometry.size.width, height: geometry.size.height)
