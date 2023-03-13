//
//  LatestScrollView.swift
//  SShop
//
//  Created by Виктор on 13.03.2023.
//

import SwiftUI

struct MainScrollView: View {
    let model: [ItemModel]
    var shortSpacing: Bool
    let row = [GridItem(.flexible())]
    init(model: [ItemModel], shortSpacing: Bool) {
        self.model = model
        self.shortSpacing = shortSpacing
    }
    init(model: [ItemModel]) {
        self.model = model
        self.shortSpacing = false
    }
    var body: some View {
        GeometryReader { geo in
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: row, spacing: shortSpacing ? geo.size.height / 40 : geo.size.height / 9.5) {
                    ForEach(model, id: \.self) { model in
                        MainItemView(
                            mainImage: model.image,
                            category: model.category,
                            nameOfItem: model.name,
                            price: model.price
                        )
                    }
                    .frame(width: geo.size.height * 0.76)
                }
            }
        }
    }
}

struct LatestScrollView_Previews: PreviewProvider {
    static var previews: some View {
        MainScrollView(model: [
            ItemModel(image: .img, category: .phone, name: "Samsung S10", price: 123091),
            ItemModel(image: .img, category: .headphones, name: "Iphone Pro Max 512 Gb", price: 2000000),
            ItemModel(image: .img, category: .phone, name: "Samsung S10", price: 180000)
        ]
        )
    }
}
