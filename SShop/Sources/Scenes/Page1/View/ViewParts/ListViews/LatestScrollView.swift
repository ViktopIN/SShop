//
//  LatestScrollView.swift
//  SShop
//
//  Created by Виктор on 13.03.2023.
//

import SwiftUI

struct LatestScrollView: View {
    let latestModel: [LatestModel]
    let row = [GridItem(.flexible())]
    var body: some View {
        GeometryReader { geo in
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: row, spacing: geo.size.height / 9.5) {
                    ForEach(latestModel, id: \.self) { model in
                        LatestItemView(
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
        LatestScrollView(latestModel: [
            LatestModel(image: .img, category: .phone, name: "Samsung S10", price: 123091),
            LatestModel(image: .img, category: .headphones, name: "Iphone Pro Max 512 Gb", price: 2000000),
            LatestModel(image: .img, category: .phone, name: "Samsung S10", price: 180000)
        ]
        )
    }
}
