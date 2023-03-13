//
//  Page1BottomView.swift
//  SShop
//
//  Created by Виктор on 13.03.2023.
//

import SwiftUI

struct Page1BottomView: View {
    var flashSaleModel: [ItemModel]
    var brandsModel: [ItemModel]
    var body: some View {
        GeometryReader { geo in
            VStack {
                Spacer()
                    .frame(height: geo.size.height / 12)
                ScrollsTitleView(scrollName: "Flash Sale")
                MainScrollView(model: flashSaleModel, shortSpacing: true)
                    .frame(height: geo.size.height / 2.06)
                Spacer()
                    .frame(height: geo.size.height / 12)
                ScrollsTitleView(scrollName: "Brands")
                MainScrollView(model: flashSaleModel, shortSpacing: true)
                    .frame(height: geo.size.height / 3.06)
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct Page1BottomView_Previews: PreviewProvider {
    static var previews: some View {
        Page1BottomView(flashSaleModel: [
            ItemModel(image: .img, category: .phone, name: "Samsung S10", price: 123091),
            ItemModel(image: .img, category: .headphones, name: "Iphone Pro Max 512 Gb", price: 2000000),
            ItemModel(image: .img, category: .phone, name: "Samsung S10", price: 180000),
            ItemModel(image: .img, category: .phone, name: "Samsung S10", price: 190000)
        ], brandsModel: [
            ItemModel(image: .img, category: .phone, name: "Samsung S10", price: 123091),
            ItemModel(image: .img, category: .headphones, name: "Iphone Pro Max 512 Gb", price: 2000000),
            ItemModel(image: .img, category: .phone, name: "Samsung S10", price: 180000),
            ItemModel(image: .img, category: .phone, name: "Samsung S10", price: 190000)
        ])
    }
}
