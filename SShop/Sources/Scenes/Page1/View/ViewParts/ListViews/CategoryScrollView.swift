//
//  CategoryScrollView.swift
//  SShop
//
//  Created by Виктор on 13.03.2023.
//

import SwiftUI

struct CategoryScrollView: View {
    let categoryModel: [CategoryModel]
    let row = [GridItem(.fixed(62))]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: row, alignment: .center, spacing: 0) {
                ForEach(categoryModel, id: \.self) { category in
                    CategoryItemView(mainImage: category.image, mainText: category.name)
                }
                .frame(width: 60)
            }
        }
    }
}

struct CategoryScrollView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryScrollView(categoryModel: [CategoryModel(image: .phone, name: "Phones"), CategoryModel(image: .gamepad, name: "Games"), CategoryModel(image: .headphone, name: "Headphones")])
    }
}


