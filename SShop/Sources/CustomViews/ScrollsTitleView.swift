//
//  ScrollsTitleView.swift
//  SShop
//
//  Created by Виктор on 13.03.2023.
//

import SwiftUI

struct ScrollsTitleView: View {
    let scrollName: String
    var body: some View {
        HStack(alignment: .center) {
            Text(scrollName)
                .font(.montserratSemiBold(ofSize: 14))
            Spacer()
            Text("View all")
                .font(.montserratMedium(ofSize: 8))
                .foregroundColor(.lightGray2)
        }
    }
}

struct ScrollsTitleView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollsTitleView(scrollName: "Latest")
    }
}
