//
//  Page1View.swift
//  SShop
//
//  Created by Виктор on 13.03.2023.
//

import SwiftUI

struct Page1View: View {
    let category = [
        CategoryModel(image: .phone, name: "Phones"),
        CategoryModel(image: .headphone, name: "Headphones"),
        CategoryModel(image: .gamepad, name: "Games"),
        CategoryModel(image: .car, name: "Cars"),
        CategoryModel(image: .bed, name: "Phurniture"),
        CategoryModel(image: .robot, name: "Kids"
                     )
    ]
    let items = [
        ItemModel(image: .img, category: .phone, name: "Samsung S10", price: 123091),
        ItemModel(image: .img, category: .headphones, name: "Iphone Pro Max 512 Gb", price: 2000000),
        ItemModel(image: .img, category: .phone, name: "Samsung S10", price: 180000),
        ItemModel(image: .img, category: .phone, name: "Samsung S10", price: 190000)
    ]
    var body: some View {
        GeometryReader { geo in
            ScrollView(.vertical, showsIndicators: false){
                LazyVStack {
                    Page1TopView(profileImage: .ppl)
                        .frame(height: geo.size.height / 27)
                        .padding(.bottom, geo.size.height / 27)
                        .padding(.trailing, geo.size.width / 9.3)
                    Page1MiddleView(inputText: "", categoryModel: category, latestModel: items)
                        .frame(height: geo.size.height / 2.4)
                    Page1BottomView(flashSaleModel: items, brandsModel: items)
                        .frame(height: geo.size.height / 1.5)
                }
            }
        }
        .padding(.leading, 11)
    }
}

struct Page1View_Previews: PreviewProvider {
    static var previews: some View {
        Page1View()
    }
}
