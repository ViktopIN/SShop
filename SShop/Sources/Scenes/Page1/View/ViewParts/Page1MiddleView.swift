//
//  Page1MiddleView.swift
//  SShop
//
//  Created by Виктор on 12.03.2023.
//

import SwiftUI

struct Page1MiddleView: View {
    @State var inputText: String
    var categoryModel: [CategoryModel]
    var latestModel: [ItemModel]
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center) {
                SearchTextFieldView(inputText: $inputText)
                    .padding(.bottom, geo.size.height / 40)
                    .padding(.horizontal, geo.size.width / 6.6)
                CategoryScrollView(categoryModel: categoryModel)
                    .padding(.bottom, geo.size.height / 30)
                ScrollsTitleView(scrollName: "Latest")
                    .padding(.bottom, 0)
                MainScrollView(model: latestModel)
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct Page1MiddleView_Previews: PreviewProvider {
    static var previews: some View {
        Page1MiddleView(inputText: "", categoryModel: [
            CategoryModel(image: .phone, name: "Phones"),
            CategoryModel(image: .headphone, name: "Headphones"),
            CategoryModel(image: .gamepad, name: "Games"),
            CategoryModel(image: .car, name: "Cars"),
            CategoryModel(image: .bed, name: "Phurniture"),
            CategoryModel(image: .robot, name: "Kids")
        ], latestModel: [
            ItemModel(image: .img, category: .phone, name: "Samsung S10", price: 123091),
            ItemModel(image: .img, category: .headphones, name: "Iphone Pro Max 512 Gb", price: 2000000),
            ItemModel(image: .img, category: .phone, name: "Samsung S10", price: 180000),
            ItemModel(image: .img, category: .phone, name: "Samsung S10", price: 190000)
        ]
        )
    }
}
