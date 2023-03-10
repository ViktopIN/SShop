//
//  SignInServiceButton.swift
//  SShop
//
//  Created by Виктор on 10.03.2023.
//

import SwiftUI

struct SignInServiceButton: View {
    
    enum Configuration {
        case apple
        case google
    }
    
    let configuration: Configuration
    var text: String {
        let serviceName = configuration == .apple ? "Apple" : "Google"
        return serviceName
    }
    
    var body: some View {
        HStack {
            switch  configuration {
            case .apple:
                Image.apple
            case .google:
                Image.google
            }
            Text("Sign in with \(text)")
                .font(.montserratMedium(ofSize: 12))
                .padding(.leading, 5)
        }
    }
}

struct SignInServiceButton_Previews: PreviewProvider {
    static var previews: some View {
        SignInServiceButton(configuration: .google)
    }
}
