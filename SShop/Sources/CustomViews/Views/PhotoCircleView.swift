//
//  PhotoCircleView.swift
//  SShop
//
//  Created by Виктор on 12.03.2023.
//

import SwiftUI

struct PhotoCircleView: View {
    var strokeColor: Color
    var body: some View {
        Image.ppl
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(lineWidth: 3)
                    .foregroundColor(strokeColor)
            }
    }
}

struct PhotoCircleView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCircleView(strokeColor: .darkGray1)
    }
}
