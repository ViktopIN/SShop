//
//  CategoryModel.swift
//  SShop
//
//  Created by Виктор on 13.03.2023.
//

import SwiftUI

struct CategoryModel: Hashable {
    let image: Image
    let name: String
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}
