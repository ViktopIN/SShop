//
//  LatestItemTextStackView.swift
//  SShop
//
//  Created by Виктор on 12.03.2023.
//

import SwiftUI

struct MainItemTextStackView: View {
    let category: String
    let nameOfItem: String
    let price: String

    var body: some View {
        HStack(alignment: .bottom) {
            VStack(alignment: .leading) {
                ZStack(alignment: .center) {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.white.opacity(0.7))
                        .frame(width: 48, height: 10)
                    Text(category)
                        .font(.montserratBold(ofSize: 6))
                }
                Text(nameOfItem)
                    .font(.montserratBold(ofSize: 12))
                    .foregroundColor(.white)
                    .padding(.bottom, 17)
                Text(price)
                    .font(.montserratBold(ofSize: 8))
                    .foregroundColor(.white)

            }
            Spacer()
            VStack {
                Spacer()
                Image.add
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20)
            }
        }
        .padding([.bottom, .leading, .trailing], 7)
    }
}

struct MainItemTextStackView_Previews: PreviewProvider {
    static var previews: some View {
        MainItemTextStackView(category: "Phone", nameOfItem: "Samsung S10", price: "$ 180,000")
    }
}
