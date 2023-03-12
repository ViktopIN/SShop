//
//  PhotoCircleView.swift
//  SShop
//
//  Created by Виктор on 12.03.2023.
//

import SwiftUI

struct PhotoCircleView: View {
    var profileImage: Image
    var strokeColor: Color
    var body: some View {
        profileImage
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(lineWidth: 1.5)
                    .foregroundColor(strokeColor)
            }
    }
}

struct PhotoCircleView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCircleView(profileImage: .ppl, strokeColor: .darkGray1)
    }
}
