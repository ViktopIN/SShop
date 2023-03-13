//
//  LatestItemView.swift
//  SShop
//
//  Created by Виктор on 12.03.2023.
//

import SwiftUI

struct LatestItemView: View {
    let mainImage: Image
    let category: Category
    var _category: String {
        category.rawValue
    }
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
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: geo.size.width, height: geo.size.height)
                LatestItemTextStackView(
                    category: _category,
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
        LatestItemView(mainImage: Image.img, category: .phone, nameOfItem: "Samsung S10", price: 180000)
    }
}
