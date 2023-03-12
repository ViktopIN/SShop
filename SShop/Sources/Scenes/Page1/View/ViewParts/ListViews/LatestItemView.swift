//
//  LatestItemView.swift
//  SShop
//
//  Created by Виктор on 12.03.2023.
//

import SwiftUI

struct LatestItemView: View {
    let mainImage: Image
    let category: String
    let nameOfItem: String
    let price: Int
    var _price: String {
        price.withDollar
    }
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .bottomLeading) {
                mainImage
                    .resizable()
                    .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 25))
                LatestItemTextStackView(
                    category: category,
                    nameOfItem: nameOfItem,
                    price: _price
                )
                .frame(width: geo.size.width, height: geo.size.height)
            }
        }
    }
}

struct LatestItemView_Previews: PreviewProvider {
    static var previews: some View {
        LatestItemView(mainImage: Image.img, category: "Phones", nameOfItem: "Samsung S10", price: 180000)
    }
}
