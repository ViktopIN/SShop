//
//  CategoryItemView.swift
//  SShop
//
//  Created by Виктор on 12.03.2023.
//

import SwiftUI

struct CategoryItemView: View {
    var mainImage: Image
    var mainText: String
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center, spacing: geometry.size.width * 0.25) {
                ZStack(alignment: .center) {
                    Circle()
                        .foregroundColor(.lightGray5)
                    mainImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width / 2.5, height: geometry.size.width / 2.5)
                }
                .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.8)
                Text(mainText)
                    .foregroundColor(.lightGray4)
                    .font(.montserratRegular(ofSize: 8))
                    .frame(width: geometry.size.width)
                    .lineLimit(1)
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(mainImage: .phone, mainText: "Phones")
    }
}
