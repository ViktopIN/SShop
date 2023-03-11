//
//  LogInView.swift
//  SShop
//
//  Created by Виктор on 11.03.2023.
//

import SwiftUI

struct LogInView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                TitleStyleText(text: "Welcome back")
                    .padding(.bottom, geometry.size.height / 10)
                LogInTextFieldStack(spacing: geometry.size.height / 20)
                    .padding(.bottom, geometry.size.height / 8)
                BigButtonView(text: "Login")
            }
            .padding(.horizontal, geometry.size.width / 10)
            .padding(.vertical, geometry.size.height / 8)
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
