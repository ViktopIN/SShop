//
//  MainBigButton.swift
//  SShop
//
//  Created by Виктор on 10.03.2023.
//

import SwiftUI

struct BigButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding()
            .background(Color.purple1)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}
