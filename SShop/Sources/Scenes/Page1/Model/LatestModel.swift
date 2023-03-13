//
//  LatestModel.swift
//  SShop
//
//  Created by Виктор on 13.03.2023.
//

import SwiftUI

enum Category: String {
    case phone = "Phone"
    case headphones = "Headphones"
}

struct LatestModel: Hashable {
    let image: Image
    let category: Category
    let name: String
    let price: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}
