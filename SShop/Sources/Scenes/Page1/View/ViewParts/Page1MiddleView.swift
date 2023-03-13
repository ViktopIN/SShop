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
    var latestModel: [LatestModel]
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center) {
                SearchTextFieldView(inputText: $inputText)
                    .padding(.bottom, geo.size.height / 40)
                CategoryScrollView(categoryModel: categoryModel)
                    .frame(height: geo.size.height / 10)
                    .padding(.bottom, geo.size.height / 30)
                ScrollsTitleView(scrollName: "Latest")
                    .padding(.bottom, 0)
                LatestScrollView(latestModel: latestModel)
                    .frame(height: geo.size.height / 5.5)
            }
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
            LatestModel(image: .img, category: .phone, name: "Samsung S10", price: 123091),
            LatestModel(image: .img, category: .headphones, name: "Iphone Pro Max 512 Gb", price: 2000000),
            LatestModel(image: .img, category: .phone, name: "Samsung S10", price: 180000),
            LatestModel(image: .img, category: .phone, name: "Samsung S10", price: 190000)
        ]
        )
    }
}
