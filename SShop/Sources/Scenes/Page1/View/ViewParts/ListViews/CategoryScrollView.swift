//
//  CategoryScrollView.swift
//  SShop
//
//  Created by Виктор on 13.03.2023.
//

import SwiftUI

struct CategoryScrollView: View {
    let categoryModel: [CategoryModel]
    let row = [GridItem(.flexible())]
    var body: some View {
        GeometryReader { geo in
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: row, alignment: .center, spacing: 7) {
                    ForEach(categoryModel, id: \.self) { category in
                        CategoryItemView(mainImage: category.image, mainText: category.name)
                    }
                    .frame(width: geo.size.width / 7)
                }
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
        .frame(height: 70)
    }
}

struct CategoryScrollView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryScrollView(categoryModel: [CategoryModel(image: .phone, name: "Phones"), CategoryModel(image: .gamepad, name: "Games"), CategoryModel(image: .headphone, name: "Headphones")])
    }
}


