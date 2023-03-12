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
            VStack(spacing: geometry.size.width * 0.4) {
                ZStack {
                    Circle()
                        .foregroundColor(.lightGray5)
                    mainImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 3/8)
                }
                .frame(width: geometry.size.width, height: geometry.size.width)
                Text(mainText)
                    .foregroundColor(.lightGray4)
                    .font(.montserratRegular(ofSize: 10))
            }
        }
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(mainImage: .phone, mainText: "Phones")
    }
}
